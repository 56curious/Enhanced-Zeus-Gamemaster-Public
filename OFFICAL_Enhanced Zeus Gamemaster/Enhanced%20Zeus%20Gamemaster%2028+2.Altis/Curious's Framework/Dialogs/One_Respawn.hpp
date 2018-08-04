class Respawn_Screen_Onetime
{
	idd = -1;
	movingEnabled = false;

	class Controls
	{
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Curious, v1.063, #Zysywy)
	////////////////////////////////////////////////////////

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 0.355589 * safezoneW + safezoneX;
		y = 0.335 * safezoneH + safezoneY;
		w = 0.288822 * safezoneW;
		h = 0.352 * safezoneH;
		colorBackground[] = {0.137,0.137,0.137,0.75};
		tooltip = "This menu is one-time to make up for the respawn point not being present.";
	};
	class IGUIBack_2201: IGUIBack
	{
		idc = 2201;
		x = 0.355589 * safezoneW + safezoneX;
		y = 0.335 * safezoneH + safezoneY;
		w = 0.288822 * safezoneW;
		h = 0.033 * safezoneH;
		colorBackground[] = {0.03,0.51,1,0.75};
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "EZGM Framework - Single-Use Respawn Screen"; //--- ToDo: Localize;
		x = 0.355589 * safezoneW + safezoneX;
		y = 0.335 * safezoneH + safezoneY;
		w = 0.288822 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Autorifleman"; //--- ToDo: Localize;
		x = 0.396849 * safezoneW + safezoneX;
		y = 0.577 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Combat Life Saver"; //--- ToDo: Localize;
		x = 0.396849 * safezoneW + safezoneX;
		y = 0.632 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Engineer"; //--- ToDo: Localize;
		x = 0.525788 * safezoneW + safezoneX;
		y = 0.632 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1604: RscButton
	{
		idc = 1604;
		text = "Marksman"; //--- ToDo: Localize;
		x = 0.525788 * safezoneW + safezoneX;
		y = 0.522 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1605: RscButton
	{
		idc = 1605;
		text = "Missile Spec. (AT)"; //--- ToDo: Localize;
		x = 0.525788 * safezoneW + safezoneX;
		y = 0.577 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1606: RscButton
	{
		idc = 1606;
		text = "Squad Leader"; //--- ToDo: Localize;
		x = 0.396849 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1607: RscButton
	{
		idc = 1607;
		text = "Rifleman"; //--- ToDo: Localize;
		x = 0.396849 * safezoneW + safezoneX;
		y = 0.522 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1603: RscButton
	{
		idc = 1603;
		text = "Machine Gunner"; //--- ToDo: Localize;
		x = 0.525788 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.0773631 * safezoneW;
		h = 0.033 * safezoneH;
	};
	class RscButton_1608: RscButton
	{
		idc = 1608;
		text = "Open Arsenal (Complete)"; //--- ToDo: Localize;
		x = 0.448425 * safezoneW + safezoneX;
		y = 0.412 * safezoneH + safezoneY;
		w = 0.103151 * safezoneW;
		h = 0.033 * safezoneH;
		action = "[ ""Open"", [ true ] ] call BIS_fnc_arsenal; closeDialog 0;";
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Please select a loadout."; //--- ToDo: Localize;
		x = 0.455665 * safezoneW + safezoneX;
		y = 0.378074 * safezoneH + safezoneY;
		w = 0.0928357 * safezoneW;
		h = 0.022 * safezoneH;
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////
	};
};
