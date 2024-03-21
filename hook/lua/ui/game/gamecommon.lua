local version = string.gsub(GetVersion(), '1.5.', '')
version = string.gsub(version, '1.6.', '') -- steam

if version < '3652' then -- All versions below 3652 don't have buildin global icon support, so we need to insert the icons by our own function
	LOG('T2_T3_Storage_FAF: [gamecommon.lua '..debug.getinfo(1).currentline..'] - Gameversion is older then 3652. Hooking "UIFile" to add our own unit icons')

   local MyUnitIdTable = {
	--Aeon M/E Storage
	'euabest2',
	'euabest3',
	'euabmst2',
	'euabmst3',

	--UEF M/E Storage
	'euebest2',
	'euebest3',
	'euebmst2',
	'euebmst3',

	--Cybran M/E Storage
	'eurbest2',
	'eurbest3',
	'eurbmst2',
	'eurbmst3',

	--Seraphim M/E Storage
	'exsbest2',
	'exsbest3',
	'exsbmst2',
	'exsbmst3',

	--T4 MEX
	'uab1402',
	'ueb1402',
	'urb1402',
	'xsb1402',

	--T2 Shielded HC
	'BAB1202',
	'BRB1202',
	'BSB1202',
	'BEB1202',

	--T3 Shielded HC
	'BSB1203',	
	'BRB1203',	
	'BEB1203',
	'BAB1203',

	--T4 Shielded Perimeter Controll HC Plant
	'BRMBT1PERI',
	'BRNBT1PERI',
	'BROBT1PERI',
	'BRPBT1PERI',

	--Retrofitted T2 PGen
	'UApowerup',
	'UEpowerup',
	'URpowerup',
	'XSpowerup',

	--Retrofitted T3 PGen
	'xsb1401',
	'urb1401',
	'ueb1401',
	'uab1401',

	}
   --unit icon must be in /icons/units/. Put the full path to the /icons/ folder in here - note no / on the end!
   local MyIconPath = "/mods/jay_infrastructure_pack"

   local oldFileNameFn = GetUnitIconFileNames

   local function IsMyUnit(bpid)
      for i, v in MyUnitIdTable do
         if v == bpid then
            return true
         end
      end
      return false
   end

   function GetUnitIconFileNames(blueprint)
      if IsMyUnit(blueprint.Display.IconName) then
         local iconName = MyIconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"
         local upIconName = MyIconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"
         local downIconName = MyIconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"
         local overIconName = MyIconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"

         if DiskGetFileInfo(iconName) == false then
            WARN('Blueprint icon for unit '.. blueprint.Display.IconName ..' could not be found, check your file path and icon names!')
            iconName = '/textures/ui/common/icons/units/default_icon.dds'
            upIconName = '/textures/ui/common/icons/units/default_icon.dds'
            downIconName = '/textures/ui/common/icons/units/default_icon.dds'
            overIconName = '/textures/ui/common/icons/units/default_icon.dds'
         end
         return iconName, upIconName, downIconName, overIconName
      else
         return oldFileNameFn(blueprint)
      end
   end
end
