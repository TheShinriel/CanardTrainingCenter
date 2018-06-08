
waitUntil {time > 4};

while {true} do 
{
	_playables = playableUnits;
	_players = [];
	for "_i" from 0 to (count _playables)-1 do
	{
		_o = _playables select _i;
		if (isplayer _o) then 
		{
			_players set [count _players,_o];
		};
	};
	_markers=[];
	for "_i" from 0 to (count _players)-1 do
	{
		_unitobj=_players select _i;;
		if (!(isnull _unitobj) && (name _unitobj!="Error: No unit") && (isplayer _unitobj)) then
		{
			_posunit = getPosATL _unitobj;
			_unitmarker = createMarkerlocal[format["mark_%1%2%3",str(_posunit select 0),str(_posunit select 1),str(_posunit select 2)],_posunit];
			_unitmarker setMarkerShapelocal "ICON" ;  
			_unitmarker setMarkerTypelocal "mil_Arrow" ;
			_unitmarker setMarkerSizeLocal [0.30, 0.30];	
			_unitmarker setMarkerPosLocal (getPosATL _unitobj);
			_unitmarker setMarkerDirLocal direction _unitobj;            
			_unitmarker setMarkerColorLocal "ColorBLUFOR";
			_unitmarker setMarkerTextlocal format["%1 - %2",_unitobj,name _unitobj];
			_markers set [count _markers,_unitmarker];
		};
	};
	sleep 1;
	for "_i" from 0 to (count _markers)-1 do
	{
		deleteMarkerLocal (_markers select _i);
	};
};


