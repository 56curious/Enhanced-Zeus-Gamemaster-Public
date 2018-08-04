/*
Script name:	initDialogs.sqf
Created on:		30 July ‎2018
Author:			Curious

Description:	Create dialogs and/or init them.

License:		This file is under "Arma Public License No Derivatives (APL-ND)"
				More information can be found at:
				https://www.bohemia.net/community/licenses/arma-public-license-nd

Example:		N/A

*/

//Create Zeus Menu
waituntil {!(IsNull (findDisplay 312))};
	_keyDown = (findDisplay 312) displayAddEventHandler ["KeyDown", "if (_this select 1 == 60) then {createDialog ""ZeusMenu""; if (_this select 1 == 60) then {closeDialog 0; createDialog ""ZeusMenu"";};}"];
