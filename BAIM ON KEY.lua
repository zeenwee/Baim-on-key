--local author = "zeenwee";

local ref = gui.Tab(gui.Reference("Misc"), "baimgroup", "Baim on key")
local baimgroup = gui.Groupbox(ref, "Baim on key", 10, 10, 200, 200);
local keyset = gui.Keybox(baimgroup, "keyset", "key", 86);
keyset:SetDescription("toggle to switch the baim and lethal")
function baimtokey()
        if input.IsButtonPressed(keyset:GetValue()) then
            pressed=true;
            Toggle = Toggle *-1

        elseif (pressed and input.IsButtonReleased(keyset:GetValue())) then
            pressed=false;

            if Toggle == 1 then
        		 gui.Command('rbot.hitscan.mode.pistol.bodyaim.lethal "Off"' )
				 gui.Command('rbot.hitscan.mode.hpistol.bodyaim.lethal "Off"' )
				 gui.Command('rbot.hitscan.mode.scout.bodyaim.lethal "Off"' )
				 gui.Command('rbot.hitscan.mode.asniper.bodyaim.lethal "Off"' )
				 gui.Command('rbot.hitscan.mode.sniper.bodyaim.lethal "Off"' )
				 gui.Command('rbot.hitscan.mode.shared.bodyaim.lethal "Off"' )
                 gui.Command('rbot.hitscan.mode.pistol.bodyaim.force "On"' )
                 guiSet("rbot.hitscan.mode.pistol.forcesafe", true )
                 gui.Command('rbot.hitscan.mode.hpistol.bodyaim.force "On"' )
                 guiSet("rbot.hitscan.mode.hpistol.forcesafe", true )
				 gui.Command('rbot.hitscan.mode.scout.bodyaim.force "On"' )
                 guiSet("rbot.hitscan.mode.scout.forcesafe", true )
				 gui.Command('rbot.hitscan.mode.sniper.bodyaim.force "On"' )
                 guiSet("rbot.hitscan.mode.sniper.forcesafe", true )
				 gui.Command('rbot.hitscan.mode.asniper.bodyaim.force "On"' )
                 guiSet("rbot.hitscan.mode.asniper.forcesafe", true )
				 gui.Command('rbot.hitscan.mode.shared.bodyaim.force "On"' )
                 guiSet("rbot.hitscan.mode.shared.forcesafe", true )
            else
                 gui.Command('rbot.hitscan.mode.pistol.bodyaim.force "Off"' )
                 guiSet("rbot.hitscan.mode.pistol.forcesafe", false )
                 gui.Command('rbot.hitscan.mode.hpistol.bodyaim.force "Off"' )
                 guiSet("rbot.hitscan.mode.hpistol.forcesafe", false )
				 gui.Command('rbot.hitscan.mode.scout.bodyaim.force "Off"' )
                 guiSet("rbot.hitscan.mode.scout.forcesafe", false )
				 gui.Command('rbot.hitscan.mode.sniper.bodyaim.force "Off"' )
                 guiSet("rbot.hitscan.mode.sniper.forcesafe", false )
				 gui.Command('rbot.hitscan.mode.asniper.bodyaim.force "Off"' )
                 guiSet("rbot.hitscan.mode.asniper.forcesafe", false )
				 gui.Command('rbot.hitscan.mode.shared.bodyaim.force "Off"' )
                 guiSet("rbot.hitscan.mode.shared.forcesafe", false )				 
				 gui.Command('rbot.hitscan.mode.pistol.bodyaim.lethal "On"' )
				 gui.Command('rbot.hitscan.mode.hpistol.bodyaim.lethal "On"' )
				 gui.Command('rbot.hitscan.mode.scout.bodyaim.lethal "On"' )
				 gui.Command('rbot.hitscan.mode.asniper.bodyaim.lethal "On"' )
				 gui.Command('rbot.hitscan.mode.sniper.bodyaim.lethal "On"' )
				 gui.Command('rbot.hitscan.mode.shared.bodyaim.lethal "On"' )

            end
        end
end
callbacks.Register("Draw", "baimtokey", baimtokey);
callbacks.Register( "Draw", function()
  if not entities.GetLocalPlayer() or not entities.GetLocalPlayer():IsAlive() then
 return end
   if gui.GetValue( "rbot.hitscan.mode.pistol.forcesafe" ) then
      draw.Color(112, 255, 0)   
   else
      draw.Color(255, 25, 25)
   end
   local screenW, screenH = draw.GetScreenSize()
      draw.TextShadow(10, screenH - 500, "BAIM" )

end )