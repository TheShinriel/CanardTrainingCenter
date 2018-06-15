/*	
	Reinit a building for CQB training, by removing everything in it.
	Them close the door and spawn new units

	Parameter(s):
		0 : STRING - Marker name
        1 : ARRAY - positions relative to the building
        2 : STRING - unit to spawn
        3 : OBJECT - building
        4 : STRING - ID of the building
        5 : ARRAY - Doors to close

	Return : nothing
*/

params ["_marker", "_positions", "_unit", "_building", "_id", "_doors"];

(format ["Batiment %1 en cours de préparation", _id]) remoteExec ["hint"]; 

// Delete units in the building
{
	if(!(isPlayer _x) AND (getPos _x) inArea _marker) then {
		deleteVehicle _x;
	}
} forEach allUnits;

{
	if((getPos _x) inArea _marker) then {
		deleteVehicle _x;
	}
} foreach AllDead;

// Close doors of the building
// animationNames cqb_batiment1_object
// ["door_1_rot","door_1_handle_rot_1","door_1_handle_rot_2","door_1_locked_rot","door_1_handle_locked_rot","door_2_rot","door_2_handle_rot_1","door_2_handle_rot_2","door_2_locked_rot","door_2_handle_locked_rot","door_3_rot","door_3_handle_rot_1","door_3_handle_rot_2","door_3_locked_rot","door_3_handle_locked_rot","glass_1_hide","glass_1_unhide","glass_2_hide","glass_2_unhide","glass_3_hide","glass_3_unhide","glass_4_hide","glass_4_unhide","glass_5_hide","glass_5_unhide","glass_6_hide","glass_6_unhide","glass_7_hide","glass_7_unhide","glass_8_hide","glass_8_unhide","glass_9_hide","glass_9_unhide","glass_10_hide","glass_10_unhide","glass_11_hide","glass_11_unhide","glass_12_hide","glass_12_unhide","glass_13_hide","glass_13_unhide","glass_14_hide","glass_14_unhide"]
{
	_building animate [_x, 0, true];
} forEach _doors;


// To disable IA when spawn
// this disableAI "MOVE"; this disableAI "AUTOTARGET"; this disableAI "AUTOCOMBAT";
{
	_pos = AGLToASL (_building modeltoWorld [(_x select 0),(_x select 1),(_x select 2)]);
	_pos = _pos + [_x select 3];
	[_unit, [_pos], EAST, "UP", ["NOTHING"], -1, "this disableAI ""MOVE""; this disableAI ""AUTOTARGET""; this disableAI ""AUTOCOMBAT"";"] call GDC2_fnc_lucySpawnStaticInf;
} forEach _positions;

(format ["Batiment %1 prêt", _id]) remoteExec ["hint"]; 
