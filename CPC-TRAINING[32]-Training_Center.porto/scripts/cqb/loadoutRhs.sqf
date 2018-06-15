
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
_unit forceAddUniform "rhs_uniform_g3_rgr";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_tourniquet";
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Clacker";
_unit addVest "rhsusf_mbav_light";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_green";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhsusf_mag_40Rnd_46x30_JHP";};
_unit addBackpack "rhsusf_falconii_coy";
for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhsusf_mag_40Rnd_46x30_JHP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_mk84";};
_unit addHeadgear "rhsusf_opscore_fg_pelt";

comment "Add weapons";
_unit addWeapon "rhsusf_weap_MP7A2";
_unit addPrimaryWeaponItem "rhsusf_acc_rotex_mp7";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
_unit addPrimaryWeaponItem "rhsusf_acc_T1_low";
_unit addPrimaryWeaponItem "rhsusf_acc_grip3";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "rhsusf_ANPVS_15";
_unit additem "ACRE_PRC148";
