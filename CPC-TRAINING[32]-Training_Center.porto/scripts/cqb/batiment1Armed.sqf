// params ["_marker", "_positions", "_unit", "_building", "_id", "_doors"];
_positions = [
	[-2.33325,5.38428,-2.96816,179.535],
	[3.13916,-2.07275,0.855064,5.07961],
	[1.40674,-1.20508,-2.56494,4.95984],
	[3.29834,-5.19849,0.855064,9.155],
	[2.66016,5.06445,0.855064,357.659]
];
_doors = ["door_1_rot", "door_2_rot", "door_3_rot"];
["cqb_batiment1", _positions, "I_C_Soldier_Bandit_7_F", cqb_batiment1_object, "1", _doors] call Shin_fnc_cqbInit;
