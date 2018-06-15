
// params ["_marker", "_positions", "_unit", "_building", "_id", "_doors"];
_positions = [
	[-0.447998,-2.41187,-2.66855,353.344],
	[4.5249,2.64941,1.23859,96.7799],
	[0.0705566,-2.47607,1.23859,349.698]
];
_doors = ["door_1_rot", "door_2_rot", "door_3_rot", "door_4_rot"];
["cqb_batiment2", _positions, "I_C_Soldier_Bandit_7_F", cqb_batiment2_object, "2", _doors] call Shin_fnc_cqbInit;

