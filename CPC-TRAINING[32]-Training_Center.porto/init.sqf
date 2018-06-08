[0] call GDC_fnc_lucyInit;

execVM "briefing.sqf";
{_x addCuratorEditableObjects [[cpc_shop],false]} forEach allcurators;
null = [] execVM "scripts\player_marker.sqf";

waitUntil {time > 1};

// Can't use 2 halo script at the same time, may be due to the 2nd parameter... ?
[halo_jump,"",true,true,false,"RHS_C130J",-1,[],getPos LZ,getMarkerPos "Dhalo"] call GDC_fnc_halo;
//[lalo_jump,"",true,true,true,"RHS_C130J",-1,[],getPos LZ,getMarkerPos "Dhalo"] call GDC_fnc_halo;
