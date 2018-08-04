/*
Script name:	onPlayerRespawn.sqf
Created on:		13 ‎July ‎2018
Author:			Curious

Description:	Run code on the respawn event of the player.

License:		This file is under "Arma Public License No Derivatives (APL-ND)"
				More information can be found at:
				https://www.bohemia.net/community/licenses/arma-public-license-nd

Example:		N/A

*/

_RespawnSetupComplete = missionnamespace getVariable ["CUR_RespawnSetup", 0];
_FirstSpawn = missionnamespace getVariable ["CUR_Initial_Respawn", 0];


if (_RespawnSetupComplete isEqualTo 0) then {
	if (_FirstSpawn isEqualTo 1) then {

		[west , "B_Soldier_unarmed_F"] call BIS_fnc_removeRespawnInventory;
		[west, "WEST_RIFLEMAN"] call BIS_fnc_addRespawnInventory;
		[west, "WEST_ENGINEER"] call BIS_fnc_addRespawnInventory;
		[west, "WEST_MARKSMAN"] call BIS_fnc_addRespawnInventory;

	} else {

	missionnamespace setVariable ["CUR_Initial_Respawn", 1];

	};
} else {

missionnamespace setVariable ["CUR_RespawnSetup", 1];

};

onEachFrame {
	if !(isNull (findDisplay 49)) then {
				[{((findDisplay 49) displayCtrl 103) ctrlSetText "Curious's Framework - V1.1.2";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
				[{((findDisplay 49) displayCtrl 2) ctrlSetText "Return to game";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
				[{((findDisplay 49) displayCtrl 1010) ctrlSetText "manual respawn";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
				[{((findDisplay 49) displayCtrl 101) ctrlSetText "Options & Settings";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
				[{((findDisplay 49) displayCtrl 122) ctrlSetText "Help & Tips";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
				[{((findDisplay 49) displayCtrl 104) ctrlSetText "Leave Server";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
	};
};