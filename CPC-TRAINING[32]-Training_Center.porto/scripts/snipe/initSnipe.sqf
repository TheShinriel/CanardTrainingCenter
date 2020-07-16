
player addAction ["<t color='#00ff00'>Réinitialiser les caméras</t>", {
	execVM "scripts\snipe\initCam.sqf";
}, "", 6, false, true, "", "alive _target AND _target distance getmarkerpos 'marker_snipe' <= 100"];


// Init when loaded
[] spawn {
	waitUntil { time > 0 };
	execVM "scripts\snipe\initCam.sqf";
}
