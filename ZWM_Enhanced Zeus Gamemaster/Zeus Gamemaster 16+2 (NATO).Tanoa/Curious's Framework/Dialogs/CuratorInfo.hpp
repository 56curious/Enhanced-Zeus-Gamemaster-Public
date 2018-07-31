class CuratorInfo
{
	idd = 1911;
	movingEnabled = false;

	class controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Curious, v1.063, #Sukamu)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 0.334959 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.330083 * safezoneW;
			h = 0.418 * safezoneH;
			colorBackground[] = {0.137,0.137,0.137,0.75};
		};
		class IGUIBack_2201: IGUIBack
		{
			idc = 2201;
			x = 0.334959 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.330083 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.03,0.51,1,0.75};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "EZGM Framework - Curator Information Panel"; //--- ToDo: Localize;
			x = 0.334959 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.319768 * safezoneW;
			h = 0.033 * safezoneH;
			colorActive[] = {-1,-1,-1,1};
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "• You can press F2 to open the Zeus Menu to enable more features."; //--- ToDo: Localize;
			x = 0.355589 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.288822 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "• You can press F3 to open the Admin Menu if you're voted admin."; //--- ToDo: Localize;
			x = 0.355589 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.288822 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "• Some features may not work. Please contact Curious if this is the case."; //--- ToDo: Localize;
			x = 0.355589 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.288822 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = "• You can press F1 to enable or disable the ""Eagle Plugs"" (Earplugs)."; //--- ToDo: Localize;
			x = 0.355589 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.288822 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class RscText_1005: RscText
		{
			idc = 1005;
			text = "If you enjoy this server, please visit the discord by clicking the text below."; //--- ToDo: Localize;
			x = 0.376219 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.257877 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Thanks, but don't show me this ever again!"; //--- ToDo: Localize;
			x = 0.345274 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.149569 * safezoneW;
			h = 0.044 * safezoneH;
			action = "closeDialog 0; hint ""You'll never see that menu again. Contact Curious to reclaim it!""; profileNamespace setVariable [""CUR_CuratorInfo"", 1]; saveProfileNamespace;";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Thanks, don't disappear forever though!"; //--- ToDo: Localize;
			x = 0.510316 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.144411 * safezoneW;
			h = 0.044 * safezoneH;
			action = "closeDialog 0;";
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "<t colorLink='#bf0882ff'<a href='https://discord.gg/kGbMb4Z'>Discord</a></t>"; //--- ToDo: Localize;
			x = 0.396849 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.0361028 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			tooltip = "Discord link to the Zeus With Moop Discord."; //--- ToDo: Localize;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			text = "<t colorLink='#bf0882ff'<a href='https://forums.bohemia.net/forums/topic/217312-enhanced-zeus-gamemaster/'>Information</a></t>"; //--- ToDo: Localize;
			x = 0.556733 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.0515754 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0.03,0.51,1,0.75};
			colorBackground[] = {0,0,0,0};
			tooltip = "Information link to the Offical Forums page."; //--- ToDo: Localize;
		};
		class RscStructuredText_1102: RscStructuredText
		{
			idc = 1102;
			x = 0.484527 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.0361028 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			tooltip = "Discord link to the Zeus With Moop Discord."; //--- ToDo: Localize;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////




	};
};