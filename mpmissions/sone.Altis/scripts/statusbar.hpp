#define ST_RIGHT 0x01

class osefStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBarAdmin', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55554;
			x = safezoneX;
			y = safezoneY + safezoneH - 0.053;
			w = safezoneW;
			h = 0.06;
			shadow = false;
			colorBackground[] = { 0, 0, 0, 0 };
			font = "PuristaSemibold";
			size = 0.032;
			type = 13;
			style = 2;
			colorText[] = {1, 1, 1, 1};
			text="Loading.";
			class Attributes {
				align="right";
				color = "#ffffff";
				font = "PuristaSemibold";
			};
		};
	};
};
