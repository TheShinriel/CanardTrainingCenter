
_unit = player;

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_B_CombatUniform_mcam_worn";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_packingBandage";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_tourniquet";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "SmokeShell";
_unit addItemToUniform "Chemlight_green";
_unit addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_9x21_Mag_SMG_02";};
for "_i" from 1 to 8 do {_unit addItemToVest "ACE_M84";};
_unit addHeadgear "rhsusf_ach_bare_semi";
_unit addGoggles "rhs_googles_black";

comment "Add weapons";
_unit addWeapon "SMG_05_F";
_unit addPrimaryWeaponItem "muzzle_snds_L";
_unit addPrimaryWeaponItem "CUP_acc_Flashlight";
_unit addPrimaryWeaponItem "optic_ACO_grn_smg";
_unit addWeapon "hgun_Pistol_heavy_01_F";
_unit addHandgunItem "optic_MRD";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace "Barklem";
_unit setSpeaker "male09eng";
