
// params ["_marker", "_positions", "_unit", "_building", "_id", "_doors"];
_positions = [
	[0.843994,4.21069,-2.76158,357.929],
	[-1.22021,1.78491,1.10935,263.86],
	[-2.86841,-0.827637,-2.76158,231.882],
	[-2.61621,6.12573,1.10993,179.831]
];
_doors = ["door_1_rot", "door_2_rot", "door_3_rot", "door_4_rot", "door_5_rot"];
["cqb_batiment4", _positions, "O_Soldier_VR_F", cqb_batiment4_object, "4", _doors] call Shin_fnc_cqbInit;

