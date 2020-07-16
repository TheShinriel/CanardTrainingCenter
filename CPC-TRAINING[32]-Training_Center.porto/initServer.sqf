cpc_shop allowdamage false;
cpc_shop setpos [2091.05, 2177.29, 0.00154042];
"respawn" setMarkerPos (getpos cpc_shop);

waitUntil {time > 2};
execVM "scripts\at\initAtVehicle.sqf";

while {alive cpc_shop} do {
	"respawn" setMarkerPos (getpos cpc_shop);
	sleep 3;
};

