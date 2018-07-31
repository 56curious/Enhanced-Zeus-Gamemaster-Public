/*
Script name:	initRespawn.sqf
Created on:		25 ‎January ‎2018
Author:			Curious

Description:	Run code on FIRST respawn.

License:		This file is under "Arma Public License No Derivatives (APL-ND)"
				More information can be found at:
				https://www.bohemia.net/community/licenses/arma-public-license-nd

Example:		N/A

*/

if (Player in curatorUnit) then {

_subtitles = [
	[ "System",			"If you're not in the Zeus Interface, please Press 'Y' (default) to access.", 0],
	[ "System",			"If you attempt something and it's not working, contact Curious via discord.", 15]
];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;

sleep 1;
curatorCamera setPos PositionDefined;
sleep 0.01;
curatorCamera setPos [position curatorCamera select 0, position curatorCamera select 1, 50];
curatorCamera setVectorDirAndUp [[0,1,-0.5],[0,0,1]];

diag_log format ["%1 has spawned correctly into ZEUS at %2", player, time];

	_Zeus = _this select 0;

/*_Zeus addEventHandler ["CuratorPinged", {
	params ["_curator", "_unit"];
	_curator playSound "ZeusPingedSpeaker";
	{hint format ["%1 Has Pinged Zeus!",_unit];} call bis_fnc_spawn;
	systemChat "Custom Ping initialized.";
}];*/

	execVM "Curious's Framework\initCustomModules.sqf";

	SystemChat "Version: 1.1.0";
	SystemChat " ";
	SystemChat "Press F2 to open the Zeus menu!";
	SystemChat "More keybinds to come!";
	If (isClass(configfile >> "CfgPatches" >> "achilles_modules_f_ares")) then
	{
		If (local player) then
		{
		  missionNamespace setVariable ['Ares_Allow_Zeus_To_Execute_Code', false];
		  hint "Ares Execute Code Disabled.";
		};

	};
_CuratorInfo = missionnamespace getVariable ["CUR_CuratorInfo", 0];
if (_CuratorInfo isEqualTo 0) then {CreateDialog "CuratorInfo";};
};

if (Player in curatorUnit_1) then {

_subtitles = [
	[ "System",			"If you're not in the Zeus Interface, please Press 'Y' (default) to access.", 0],
	[ "System",			"If you attempt something and it's not working, contact Curious via discord.", 15]
];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;

sleep 1;
curatorCamera setPos PositionDefined;
sleep 0.01;
curatorCamera setPos [position curatorCamera select 0, position curatorCamera select 1, 50];
curatorCamera setVectorDirAndUp [[0,1,-0.5],[0,0,1]];

diag_log format ["%1 has spawned correctly into ZEUS at %2", player, time];

_Zeus = _this select 0;

/*_Zeus addEventHandler ["CuratorPinged", {
	params ["_curator", "_unit"];
	_curator playSound "ZeusPingedSpeaker";
	{hint format ["%1 Has Pinged Zeus!",_unit];} call bis_fnc_spawn;
	systemChat "Custom Ping initialized.";
}];*/

	execVM "Curious's Framework\initCustomModules.sqf";

	SystemChat "Version: 1.1.0";
	SystemChat " ";
	SystemChat "Press F2 to open the Zeus menu!";
	SystemChat "More keybinds to come!";
If (isClass(configfile >> "CfgPatches" >> "achilles_modules_f_ares")) then
{
	If (local player) then
	{
	  missionNamespace setVariable ['Ares_Allow_Zeus_To_Execute_Code', false];
	  hint "Ares Execute Code Disabled.";
	};


};

	if (side player == west) then {

	diag_log format ["%1 has spawned correctly into BLUFOR at %2", player, time];

	};

_CuratorInfo = missionnamespace getVariable ["CUR_CuratorInfo", 0];
if (_CuratorInfo isEqualTo 0) then {CreateDialog "CuratorInfo";};
};

if (LocalLoadedCorrectly isequalto true) then {
	_subtitles = [
	[ "System",			"Your local settings have been loaded.", 50]
	];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;
} else {
	_subtitles = [
	[ "System",			"Your local settings have not been loaded. Relog to fix. Ignore if occours 3 times. NOTIFY CURIOUS!", 50]
	];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;
};
if (PlayerServerLoadedCorrectly isequalto true) then {
	_subtitles = [
	[ "System",			"Your local-server settings have been loaded.", 57]
	];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;
} else {
	_subtitles = [
	[ "System",			"Your local-server settings have not been loaded. Relog to fix. Ignore if occours 3 times. NOTIFY CURIOUS!", 57]
	];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;
};