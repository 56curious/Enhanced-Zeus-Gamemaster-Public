/*
Script name:	initServer.sqf
Created on:		25 ‎January ‎2018
Author:			Curious

Description:	Run code on server start.

License:		This file is under "Arma Public License No Derivatives (APL-ND)"
				More information can be found at:
				https://www.bohemia.net/community/licenses/arma-public-license-nd

Example:		N/A

*/
//--- Curators
{
	_x allowCuratorLogicIgnoreAreas true;
	[_x,"Man"] call bis_fnc_removeDestroyedCuratorEditableObjects;
} foreach allCurators;