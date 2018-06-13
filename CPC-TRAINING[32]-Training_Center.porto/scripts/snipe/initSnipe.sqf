
player addAction ["<t color='#00ff00'>Réinitialiser les caméras</t>", {

snipe_cam1 cameraEffect ["Internal", "Back", "snipe_cam1_rtt"];
snipe_cam2 cameraEffect ["Internal", "Back", "snipe_cam2_rtt"];
snipe_cam3 cameraEffect ["Internal", "Back", "snipe_cam3_rtt"];
snipe_cam4 cameraEffect ["Internal", "Back", "snipe_cam4_rtt"];
snipe_cam5 cameraEffect ["Internal", "Back", "snipe_cam5_rtt"];
snipe_cam6 cameraEffect ["Internal", "Back", "snipe_cam6_rtt"];
snipe_cam7 cameraEffect ["Internal", "Back", "snipe_cam7_rtt"];
snipe_cam8 cameraEffect ["Internal", "Back", "snipe_cam8_rtt"];

}, "", 6, false, true, "", "alive _target AND _target distance getmarkerpos 'marker_snipe' <= 100"];

