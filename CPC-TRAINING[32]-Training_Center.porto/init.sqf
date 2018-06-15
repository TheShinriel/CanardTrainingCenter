[0] call GDC_fnc_lucyInit;

execVM "briefing.sqf";
{_x addCuratorEditableObjects [[cpc_shop],false]} forEach allcurators;
null = [] execVM "scripts\player_marker.sqf";

waitUntil {time > 1};

execVM "scripts\cqb\initCqb.sqf";

execVM "scripts\halo\initHalo.sqf";

execVM "scripts\snipe\initSnipe.sqf";
