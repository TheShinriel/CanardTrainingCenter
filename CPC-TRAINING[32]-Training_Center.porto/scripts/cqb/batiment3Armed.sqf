

// params ["_marker", "_positions", "_unit", "_building", "_id", "_doors"];
_positions = [
	[-2.61475,-2.32007,0.784062,263.86],
	[-1.85229,2.58423,0.784062,263.86],
	[0.111572,6.27417,0.724061,183.078],
	[2.75342,2.16479,-2.62327,87.936]
];
_doors = ["door_1_rot", "door_2_rot", "door_3_rot", "door_4_rot", "door_5_rot", "door_6_rot"];
["cqb_batiment3", _positions, "I_C_Soldier_Bandit_7_F", cqb_batiment3_object, "3", _doors] call Shin_fnc_cqbInit;

