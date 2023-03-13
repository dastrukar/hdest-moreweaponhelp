version 4.10

class NewHUDWeaponHelp : HUDWeaponHelp
{
	override void DrawHUDStuff(HCStatusbar sb, int state, double ticFrac)
	{
		if (HDSpectator(sb.hpl) || !CheckCommonStuff(sb, state, ticFrac))
			return;

		int wephelpheight=NewSmallFont.GetHeight()*5;
		string s="Hold "..WEPHELP_USE.." to focus\n\n"..sb.hpl.wephelptext;
		screen.drawText(NewSmallFont,OptionMenuSettings.mFontColorValue,
			(8 + WeaponHelp_Offset_X) * WeaponHelp_Scale,
			(wephelpheight + WeaponHelp_Offset_Y) * WeaponHelp_Scale,
			s,
			DTA_VirtualWidth,640,
			DTA_VirtualHeight,480,
			DTA_Alpha,(sb.HUDLevel == 2)? WeaponHelp_Focus_Alpha : WeaponHelp_Hidden_Alpha,
			DTA_ScaleX,WeaponHelp_Scale,
			DTA_ScaleY,WeaponHelp_Scale
		);
	}
}
