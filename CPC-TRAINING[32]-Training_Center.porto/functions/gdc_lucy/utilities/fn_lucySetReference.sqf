/*
	Author: Shinriel

	Description:
	Set an reference object for the method GDCç_fnc_lucyPrepareSpawnStatic
	Will take an return the neareast object fro mthe mouse position

	Parameter(s):
	nothing

	Returns:
	nothing
*/

LUCY_REFERENCE = nearestobject screenToWorld getMousePosition;

LUCY_REFERENCE;


/*
LUCY_REFERENCE = nearestobject screenToWorld getMousePosition;
LUCY_REFERENCE2 = nearestobject screenToWorld getMousePosition;

LUCY_REFERENCE worldToModel (getposATL LUCY_REFERENCE2)
*/