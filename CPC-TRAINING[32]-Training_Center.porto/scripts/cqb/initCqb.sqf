


// Unarmed
CQB1 addAction ["<t color='#ffff00'>Entrainement</t>", "scripts\cqb\batiment1Client.sqf","",6,false,true,"","(_target distance _this) < 6"];
CQB2 addAction ["<t color='#ffff00'>Entrainement</t>", "scripts\cqb\batiment2Client.sqf","",6,false,true,"","(_target distance _this) < 6"];
CQB3 addAction ["<t color='#ffff00'>Entrainement</t>", "scripts\cqb\batiment3Client.sqf","",6,false,true,"","(_target distance _this) < 6"];
CQB4 addAction ["<t color='#ffff00'>Entrainement</t>", "scripts\cqb\batiment4Client.sqf","",6,false,true,"","(_target distance _this) < 6"];


// Armed
CQB1 addAction ["<t color='#ffff00'>Hommes armés</t>", "scripts\cqb\batiment1ArmedClient.sqf","",6,false,true,"","(_target distance _this) < 6"];
CQB2 addAction ["<t color='#ffff00'>Hommes armés</t>", "scripts\cqb\batiment2ArmedClient.sqf","",6,false,true,"","(_target distance _this) < 6"];
CQB3 addAction ["<t color='#ffff00'>Hommes armés</t>", "scripts\cqb\batiment3ArmedClient.sqf","",6,false,true,"","(_target distance _this) < 6"];
CQB4 addAction ["<t color='#ffff00'>Hommes armés</t>", "scripts\cqb\batiment4ArmedClient.sqf","",6,false,true,"","(_target distance _this) < 6"];



cqbBox addAction ["<t color='#0000ff'>Charger loadout</t>", "scripts\cqb\loadout.sqf","",6,false,true,"","(_target distance _this) < 10"];
cqbBox addAction ["<t color='#00ccff'>Charger loadout rhs</t>", "scripts\cqb\loadoutRhs.sqf","",6,false,true,"","(_target distance _this) < 10"];

