
private ["_pos"];

_pos = [1410.09,1141.84,0];

cpc_shop allowdamage false;
cpc_shop setpos (_pos);
"respawn" setMarkerPos (getpos cpc_shop);

waitUntil {time > 4};
while {alive cpc_shop} do {
	"respawn" setMarkerPos (getpos cpc_shop);
	sleep 3;
};