/*
Script name:	initPlayerLocal.sqf
Created on:		25 ‎January ‎2018
Author:			Curious

Description:	Run code on player start locally.

License:		This file is under "Arma Public License No Derivatives (APL-ND)"
				More information can be found at:
				https://www.bohemia.net/community/licenses/arma-public-license-nd

Example:		N/A

*/

LocalLoadedCorrectly = false;
SettingsOpened = false;
sleep 0.1;

["Please be aware that this is still in an ALPHA STAGE of development! Expect and report bugs.",0.01,(safeZoneY + 0.05),10,1,0,90]spawn bis_fnc_dynamicText;

execVM "Curious's Framework\Scripts\ServerInformation.sqf";
execVM "Curious's Framework\scripts\Admin Menu\AdminMenu.sqf";
execVM "Curious's Framework\Scripts\Misc\Features\Earplugs.sqf";


if (side player == west) then {
	player setPos PositionDefined;
	sleep 0.001;
	titlecut ["","BLACK",0];

	SystemChat "Version: 1.1.0";
	SystemChat " ";
	SystemChat "Press F1 for Earplugs!";
	SystemChat "Press F2 to open your settings!";

	waituntil {!(IsNull (findDisplay 46))};
	SettingsMenuEH = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 60) then {	createDialog ""UserSettings""; SettingsOpened = true; if (_this select 1 == 60) then {closeDialog 0; createDialog ""UserSettings"";};}"];

	params["_player","_didJIP"];
	_playerServerHistory = profileNamespace getVariable ["CUR_playerServerHistory",[]];
	_playerUID = getPlayerUID player;
		if (_playerUID in _playerServerHistory) then {
			ZeusReturn = execVM "Curious's Framework\Scripts\ZeusIntroReturn.sqf";
		} else {
			ZeusIntro = execVM "Curious's Framework\Scripts\ZeusIntroNew.sqf";
			_playerServerHistory pushBackUnique _playerUID;
		    profileNamespace setVariable ["CUR_playerServerHistory",_playerServerHistory];
		};
};

#include "Curious's Framework\initCurator.sqf"
#include "Curious's Framework\initSlots.sqf"
#include "Curious's Framework\initCustomModules.sqf"
#include "Curious's Framework\initDialogs.sqf"
#include "Curious's Framework\initRespawn.sqf"

LocalLoadedCorrectly = true;