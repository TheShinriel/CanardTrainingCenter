/*	
	Do specific injuries

	Parameter(s):
		0 : OBJECT - Target
        1 : NUMBER - 0 to 1, how big is the injury
        2 : STRING - Where is the injury
        3 : STRING - What type of injury

	Return : nothing
*/

// source: https://github.com/acemod/ACE3/issues/2816#issuecomment-154545470
params [
	"_target", 
	["_Size", 0.2 + random 0.6], 
	["_bodypart", ["head", "body", "hand_l", "hand_r", "leg_l", "leg_r"] call BIS_fnc_selectRandom], 
	["_WoundType", ["bullet", "grenade", "explosive", "shell", "vehiclecrash", "backblast", "stab", "punch", "falling", "unknown"] call BIS_fnc_selectRandom]
];
private["_damage", "_hitPart"];

// Get current hitpoint on this body part, else, there will be no damage
_hitPart = switch (_bodypart) do {
    case "head": { "HitHead" };
    case "body": { "HitBody" };
    case "hand_l": { "HitLeftArm" };
    case "hand_r": { "HitRightArm" };
    case "leg_l": { "HitRightLeg" };
    case "leg_r": { "HitLeftLeg" };
    default { "" };
};

_damage = switch (_hitPart) do {
    case "": { _Size };
    default { (_target getHitPointDamage _hitPart) + _Size };
};

// [_target, _damage, _bodypart, _WoundType] call ace_medical_fnc_addDamageToUnit;
// hint ((str [_target, _bodypart, _damage, ObjNull, _WoundType, -1]) + " //  " + str ([_damage, _hitPart, (_target getHitPointDamage _hitPart), _Size]));
// [_target, _bodypart, _damage, ObjNull, _WoundType, 0] call ace_medical_fnc_handleDamage;

[_target, _damage, _bodypart, _WoundType] call ace_medical_fnc_addDamageToUnit;

/* ace_medical_fnc_addDamageToUnit
 * 0: The Unit <OBJECT>
 * 1: Damage to Add <NUMBER>
 * 2: Selection ("head", "body", "hand_l", "hand_r", "leg_l", "leg_r") <STRING>
 * 3: Projectile Type <STRING>
*/

/* ace_medical_fnc_handleDamage
 * 
 * 0: Unit That Was Hit <OBJECT>
 * 1: Name Of Hit Selection <STRING>
 * 2: Amount Of Damage <NUMBER>
 * 3: Shooter <OBJECT>
 * 4: Projectile <OBJECT, STRING>
 * 5: HitPointIndex (-1 for structural) <NUMBER>
 * 6: Shooter <OBJECT>
*/

/* fnc_handleDamage_advanced
 * 
 * 0: Unit That Was Hit <OBJECT>
 * 1: Name Of Hit Selection <STRING>
 * 2: Amount Of Damage <NUMBER>
 * 3: Shooter <OBJECT>
 * 4: Projectile <STRING>
 * 5: Hit part index of the hit point <NUMBER>
 * 6: Shooter? <OBJECT>
 * 7: Current damage to be returned <NUMBER>
*/
