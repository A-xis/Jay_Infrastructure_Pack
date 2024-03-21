--****************************************************************************
--**
--**  File     :  /ZZL0105_script.lua
--**  Author(s):  Packer, PatientBeard
--**
--**  Summary  :  Reclaim Turret Aggressive
--****************************************************************************
local CConstructionStructureUnit = import('/lua/cybranunits.lua').CConstructionStructureUnit
ZZL0105 = Class(CConstructionStructureUnit) 
{
    OnCreate = function(self)
        local reclaimthread = ForkThread(self.ReclaimerThread, self)
        self.Trash:Add(reclaimthread)
        CConstructionStructureUnit.OnCreate(self)
    end,
    ReclaimCheck = function(self, unit)
		IssueReclaim({self}, unit)
    end,
    ReclaimerThread = function(self)
        local aiBrain = GetArmyBrain(self:GetArmy())
        local bp = self:GetBlueprint().Economy.MaxBuildDistance
		--this is hardcoded so build range extensions don't allow reclaiming of live units at stupid range.
		--added 5 for good measure. (10 to t2 for ocd purposes).
		--caps are t1=40, t2=60, t3=80
		local maxAbp = 40
		local aBp = bp
		if bp > maxAbp then 
			aBp = maxAbp
		end
		local turnOffPoint = .85
		local closeBp = aBp * .35
		local medBp = aBp * .7
        local pos = self:GetPosition()
        local curMass = 0
        --keep 10 items to reclaim every 2 seconds
        local targetQueue = 10
        local ignoredBlacklistClearCounter = 0
		--this loop should continue while not dead.
        while not self.Dead do
			--this similar looking loop is just designed to make us wait until the unit is ready to do something.
			while not self.Dead and self:IsUnitState('Reclaiming') do
				--lets just check to see if we are idle and not busy.
				--we can check every tick because it's just not dead yet.
				WaitTicks(1)
			end
			if not self.Dead and not self:IsUnitState('Reclaiming') then 
				--so we just aren't going to try to add anything to the queue while there's a queue.
				local addToQueue = targetQueue
				local targetpos = {}
				local rect = Rect(pos[1] - bp, pos[3] - bp, pos[1] + bp, pos[3] + bp)
				local reclaimOptions = GetReclaimablesInRect(rect)
				local closeTargets = {}
				local medTargets = {}
				local longTargets = {}
				local reclaimTargets = {}
				if reclaimOptions then 
					for i, unit in reclaimOptions do 
						--is this item valid and not an aircraft, which can't be reclaimed unless landed.
						if unit then 
							--is it a unit
							if IsUnit(unit) then
								if not IsAlly(self:GetArmy(), unit:GetArmy()) and unit:GetCurrentLayer() != 'Air' and not unit.Dead then 
									targetpos = unit:GetPosition()
									local targetDistance = VDist2(pos[1], pos[3], targetpos[1], targetpos[3])
									if targetDistance < closeBp then
										table.insert(closeTargets, i)
									elseif targetDistance < medBp then
										table.insert(medTargets, i)
									elseif targetDistance < aBp then
										table.insert(longTargets, i)
									end
								end
								--friendly unit we don't want to reclaim.
								--or possibly something that's been destroyed, and is in this list for some reason.
							else --the elseif was replaced because nothing seems to reach past it anyways.
							--elseif (IsProp(unit) or unit.IsProp or unit.IsWreckage) and unit.ReclaimLeft > 0 then
								--or a prop/wreck
								targetpos = unit:GetPosition()
								local targetDistance = VDist2(pos[1], pos[3], targetpos[1], targetpos[3])
								if targetDistance < bp then
									table.insert(reclaimTargets, i)
								end
							end
						end
					end
					local liveReclaiming = false
					if table.getn(closeTargets) > 0 then 
						liveReclaiming = true
						for index, i in closeTargets do 
							addToQueue = addToQueue - 1
							self.ReclaimCheck(self, reclaimOptions[i])
							if addToQueue < 1 then
								break
							end
						end
					end
					if addToQueue > 0 then 
						if table.getn(medTargets) > 0 then 
							liveReclaiming = true
							for index, i in medTargets do 
								addToQueue = addToQueue - 1
								self.ReclaimCheck(self, reclaimOptions[i])
								if addToQueue < 1 then
									break
								end
							end
						end
					end
					if addToQueue > 0 then 
						if table.getn(longTargets) > 0 then 
							liveReclaiming = true
							for index, i in longTargets do 
								addToQueue = addToQueue - 1
								self.ReclaimCheck(self, reclaimOptions[i])
								if addToQueue < 1 then
									break
								end
							end
						end
					end
					if addToQueue > 0 then 
						curMass = aiBrain:GetEconomyStoredRatio('MASS')
						--if we have an almost full mass bar, we don't want to reclaim wrecks right now.
						--we also don't want to clear the queue if we are reclaiming live units.
						if curMass > turnOffPoint then 
							if not liveReclaiming then
								IssueClearCommands({self})
							end
						else
							if table.getn(reclaimTargets) > 0 then 
								local multiReclaim = {}
								for index, i in reclaimTargets do 
									if not reclaimOptions[i].isBeingAutoReclaimed then
										addToQueue = addToQueue - 1
										self.ReclaimCheck(self, reclaimOptions[i])
										--marks this item as being enqueued by this reclaimer.
										--other reclaimers will ignore this, unless there's room in their queue.
										reclaimOptions[i].isBeingAutoReclaimed = true
										if addToQueue < 1 then
											break
										end
									else
										table.insert(multiReclaim, i)
									end
								end
								--here we will re-enqueue already being reclaimed props/wrecks (by other reclaimers)
								--the idea is to distribute the prop field across all the different
								--reclaimers, but we *will* still attempt, if we have space in the queue
								--this should make sure if a reclaimer blows up mid reclaim, another reclaimer
								--will eventually pick it up when it runs out of things it has competition for.
								--tldr: distribute across all reclaimers unless there's nothing left but what's already being reclaimed.
								if addToQueue > 0 and table.getn(multiReclaim) > 0 then 
									for index, i in multiReclaim do 
										self.ReclaimCheck(self, reclaimOptions[i])
										reclaimOptions[i].isBeingAutoReclaimed = true
										if addToQueue < 1 then
											break
										end
									end									
								end
							end
						end
					end
				end
			end
			WaitSeconds(4)
        end
    end
}
TypeClass = ZZL0105