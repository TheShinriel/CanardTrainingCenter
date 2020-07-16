
{
	if(!(isNull _x)) then {
		_x engineOn true;

		// _x allowDamage false; // Disable events too
		_x addEventHandler ["HandleDamage", {0}];

		_x addEventHandler ["Hit", {
			params ["_unit", "_source", "_damage", "_instigator"];
			["<t color='#ff0000' align='left' size='0.7'>Touché !</t>", 0.1, 0.3, 5, 0] remoteExec ["BIS_fnc_dynamicText", _instigator]; 
		}];
	};	
} forEach [
	at_300,
	at_400,
	at_500,
	at_001
];
