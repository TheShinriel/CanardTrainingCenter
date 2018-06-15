player addaction ["<t color='#892D97'>Teleportation</t>", "scripts\teleport_player.sqf",0,0,false,true,"","(_target == _this)"];
player addaction ["<t color='#FF4444'>ACE Arsenal</t>",{[player, player, true] call ace_arsenal_fnc_openBox},"",0,false,false];
player addaction ["<t color='#660033'>Bohemia Arsenal</t>",{["Open", true] call BIS_fnc_arsenal},"",0,false,false,"","(_target == _this)"];