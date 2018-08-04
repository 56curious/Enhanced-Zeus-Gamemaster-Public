/*
Script name:	initRespawn.sqf
Created on:		09 ‎June ‎2018
Author:			Curious

Description:	Run code on FIRST respawn.

License:		This file is under "Arma Public License No Derivatives (APL-ND)"
				More information can be found at:
				https://www.bohemia.net/community/licenses/arma-public-license-nd

Example:		N/A

*/

//Text Used from NRE_earplugs.sqf by NemesisRE @ http://nrecom.net for the language enhancements - Config from Invade & Annex

PlugsIN = 2;
_image  = "<img image='media\Headphones.paa' size='3'/>";
_EPIn  = "<t size='1.35' font='RobotoCondensedBold'>""STR_NREEP_IN_HINT""</ t>";
_EPOUT = "<t size='1.35' font='RobotoCondensedBold'>""STR_NREEP_OUT_HINT""</ t>";

waitUntil {!isNull player};


	MEP_KD = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 59) then {
	 switch (PlugsIN) do {
	     case 1: { PlugsIN = 2; 2 fadeSound 1; player groupChat _EPOUT; };
		 case 2: { PlugsIN = 1; 2 fadeSound 0.1; player groupChat _EPIn;  };
		 default { };
		 };
	}"];
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", MEP_KD];


	MEP_KD = (findDisplay 312) displayAddEventHandler ["KeyDown", "if (_this select 1 == 59) then {
	 switch (PlugsIN) do {
	     case 1: { PlugsIN = 2; 2 fadeSound 1; player groupChat _EPOUT; };
		 case 2: { PlugsIN = 1; 2 fadeSound 0.1; player groupChat _EPIn;  };
		 default { };
		 };
	}"];
	(findDisplay 312) displayRemoveEventHandler ["KeyDown", MEP_KD];