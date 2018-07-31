/*
Script name:    init.sqf
Created on:     25 ‎January ‎2018
Author:         Curious

Description:    Run code on mission start.

License:        This file is under "Arma Public License No Derivatives (APL-ND)"
                More information can be found at:
                https://www.bohemia.net/community/licenses/arma-public-license-nd

Example:        N/A

*/
missionnamespace setVariable ["CUR_Initial_Respawn_Passed", 0];
missionnamespace setVariable ["CUR_RespawnSetup", 0];

sleep 0.01;
PositionDefined = getMarkerPos selectRandom ["RandomPos1","RandomPos2","RandomPos3","RandomPos4","RandomPos5","RandomPos6","RandomPos7","RandomPos8","RandomPos9"];
RespawnPos = [west, [PositionDefined select 0 ,PositionDefined select 1, 0], "Default Spawn Point"] call BIS_fnc_addRespawnPosition;

execVM "Curious's Framework\Scripts\Params\paramFog.sqf";
execVM "Curious's Framework\Scripts\Params\paramGodMode.sqf";
execVM "Curious's Framework\Scripts\Params\paramGurFriendly.sqf";
execVM "Curious's Framework\Scripts\Params\paramMaxTime.sqf";
execVM "Curious's Framework\Scripts\Params\paramModRights.sqf";

sleep 0.01;

musicNames = ("isClass _x" configClasses (configFile >> "cfgMusic")) apply {
		[
			if (isText (_x >> "name")) then {getText (_x >> "name")} else {""}
		]
};

while {true} do
{
    {
        _prefix = [_x,0,16] call BIS_fnc_trimString;
        if(_prefix == "bis_fnc_drawminef") then
        {
            deleteMarker _x;
        };
        //hint format ["marker prefix:%1",_prefix];
    } foreach allMapMarkers;
    sleep 1;
};

sleep 300;
RespawnPos call BIS_fnc_removeRespawnPosition;