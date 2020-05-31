local _, GlobalFont = ...

GlobalFont.DefaultFont = [[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]]
GlobalFont.ChatFont = [[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]]

function GlobalFont.Register(this, event, ...)
	STANDARD_TEXT_FONT = GlobalFont.DefaultFont
	UNIT_NAME_FONT = GlobalFont.DefaultFont
	DAMAGE_TEXT_FONT = GlobalFont.DefaultFont

	-- don’t ask me where they’re applied. these codes were automatically generated from xml files.
	if SystemFont_Tiny2 then SystemFont_Tiny2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 8) end
	if SystemFont_Tiny then SystemFont_Tiny:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 9) end
	if SystemFont_Shadow_Small then SystemFont_Shadow_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s3,2.otf]], 15) end
	if Game10Font_o1 then Game10Font_o1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s6,5.otf]], 12, "OUTLINE") end
	if SystemFont_Small then SystemFont_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s6,5.otf]], 12) end
	if SystemFont_Small2 then SystemFont_Small2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s13,11.otf]], 13) end
	if SystemFont_Shadow_Small2 then SystemFont_Shadow_Small2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s13,11.otf]], 13) end
	if SystemFont_Shadow_Med1_Outline then SystemFont_Shadow_Med1_Outline:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s5,4.otf]], 15, "OUTLINE") end
	if SystemFont_Shadow_Med1 then SystemFont_Shadow_Med1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s5,4.otf]], 15) end
	if SystemFont_Med2 then SystemFont_Med2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s14,13.otf]], 14) end
	if SystemFont_Med3 then SystemFont_Med3:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 14) end
	if SystemFont_Shadow_Med3 then SystemFont_Shadow_Med3:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 14) end
	if QuestFont_Large then QuestFont_Large:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 15) end
	if QuestFont_Huge then QuestFont_Huge:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 18) end
	if SystemFont_Large then SystemFont_Large:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 16) end
	if SystemFont_Shadow_Large_Outline then SystemFont_Shadow_Large_Outline:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s17,16.otf]], 17, "OUTLINE") end
	if SystemFont_Shadow_Med2 then SystemFont_Shadow_Med2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s8,7.otf]], 16) end
	if SystemFont_Shadow_Large then SystemFont_Shadow_Large:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s17,16.otf]], 17) end
	if SystemFont_Shadow_Large2 then SystemFont_Shadow_Large2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s19,18.otf]], 19) end
	if SystemFont_Shadow_Huge1 then SystemFont_Shadow_Huge1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 20) end
	if SystemFont_Huge2 then SystemFont_Huge2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 24) end
	if SystemFont_Shadow_Huge2 then SystemFont_Shadow_Huge2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 24, "OUTLINE") end
	if SystemFont_Shadow_Huge3 then SystemFont_Shadow_Huge3:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 25) end
	if SystemFont_Shadow_Outline_Huge3 then SystemFont_Shadow_Outline_Huge3:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 25, "OUTLINE") end
	if SystemFont_Shadow_Huge4 then SystemFont_Shadow_Huge4:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 27) end
	if SystemFont_Shadow_Outline_Huge4 then SystemFont_Shadow_Outline_Huge4:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 27, "OUTLINE") end
	if SystemFont_Shadow_Outline_Huge2 then SystemFont_Shadow_Outline_Huge2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 22, "OUTLINE") end
	if SystemFont_Med1 then SystemFont_Med1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s13,12.otf]], 13) end
	if SystemFont_WTF2 then SystemFont_WTF2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s16,9.otf]], 64) end
	if SystemFont_Outline_WTF2 then SystemFont_Outline_WTF2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s16,9.otf]], 64, "OUTLINE") end
	if GameTooltipHeader then GameTooltipHeader:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s8,7.otf]], 16) end
	if System_IME then System_IME:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 16) end
	if NumberFont_Shadow_Tiny then NumberFont_Shadow_Tiny:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 10) end
	if NumberFont_Shadow_Small then NumberFont_Shadow_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 12) end
	if NumberFont_Shadow_Med then NumberFont_Shadow_Med:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 14) end
	if NumberFont_Shadow_Large then NumberFont_Shadow_Large:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 20) end
	if Tooltip_Med then Tooltip_Med:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s13,12.otf]], 13) end
	if Tooltip_Small then Tooltip_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s6,5.otf]], 12) end
	if Game30Font then Game30Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 30) end
	if Game72Font then Game72Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 72) end
	if Game72Font_Shadow then Game72Font_Shadow:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 72) end
	if SystemFont_Outline_Small then SystemFont_Outline_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s6,5.otf]], 12, "OUTLINE") end
	if SystemFont_Outline then SystemFont_Outline:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s15,13.otf]], 15, "OUTLINE") end
	if SystemFont_InverseShadow_Small then SystemFont_InverseShadow_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 10) end
	if SystemFont_Huge1 then SystemFont_Huge1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 20) end
	if SystemFont_Huge1_Outline then SystemFont_Huge1_Outline:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 20, "OUTLINE") end
	if SystemFont_OutlineThick_Huge2 then SystemFont_OutlineThick_Huge2:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 22, "THICKOUTLINE") end
	if SystemFont_OutlineThick_Huge4 then SystemFont_OutlineThick_Huge4:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 26, "THICKOUTLINE") end
	if SystemFont_OutlineThick_WTF then SystemFont_OutlineThick_WTF:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 32, "THICKOUTLINE") end
	if NumberFont_GameNormal then NumberFont_GameNormal:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s6,5.otf]], 12) end
	if NumberFont_OutlineThick_Mono_Small then NumberFont_OutlineThick_Mono_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 12, "THICKOUTLINE,MONOCHROME") end
	if Number12Font_o1 then Number12Font_o1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 12, "OUTLINE") end
	if NumberFont_Small then NumberFont_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 12) end
	if Number11Font then Number11Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 11) end
	if Number12Font then Number12Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 12) end
	if Number13Font then Number13Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 13) end
	if PriceFont then PriceFont:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 14) end
	if Number15Font then Number15Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 15) end
	if Number18Font then Number18Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 18) end
	if NumberFont_Normal_Med then NumberFont_Normal_Med:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 14) end
	if NumberFont_Outline_Med then NumberFont_Outline_Med:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 14, "OUTLINE") end
	if NumberFont_Outline_Large then NumberFont_Outline_Large:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 16, "OUTLINE") end
	if NumberFont_Outline_Huge then NumberFont_Outline_Huge:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 30, "OUTLINE") end
	if Fancy22Font then Fancy22Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 22) end
	if QuestFont_Outline_Huge then QuestFont_Outline_Huge:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 18, "OUTLINE") end
	if QuestFont_Super_Huge then QuestFont_Super_Huge:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 24) end
	if QuestFont_Super_Huge_Outline then QuestFont_Super_Huge_Outline:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 24, "OUTLINE") end
	if SplashHeaderFont then SplashHeaderFont:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 24) end
	if Game11Font then Game11Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 11) end
	if Game12Font then Game12Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 12) end
	if Game13Font then Game13Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 13) end
	if Game13FontShadow then Game13FontShadow:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 13) end
	if Game15Font then Game15Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 15) end
	if Game16Font then Game16Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 16) end
	if Game18Font then Game18Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 18) end
	if Game20Font then Game20Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 20) end
	if Game24Font then Game24Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 24) end
	if Game27Font then Game27Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 27) end
	if Game32Font then Game32Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 32) end
	if Game36Font then Game36Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 36) end
	if Game42Font then Game42Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 42) end
	if Game46Font then Game46Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 46) end
	if Game48Font then Game48Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 48) end
	if Game48FontShadow then Game48FontShadow:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 48) end
	if Game60Font then Game60Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 60) end
	if Game120Font then Game120Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 120) end
	if Game11Font_o1 then Game11Font_o1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 11, "OUTLINE") end
	if Game12Font_o1 then Game12Font_o1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 12, "OUTLINE") end
	if Game13Font_o1 then Game13Font_o1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 13, "OUTLINE") end
	if Game15Font_o1 then Game15Font_o1:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 15, "OUTLINE") end
	if QuestFont_Enormous then QuestFont_Enormous:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 30) end
	if DestinyFontMed then DestinyFontMed:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 14) end
	if DestinyFontLarge then DestinyFontLarge:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 18) end
	if CoreAbilityFont then CoreAbilityFont:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 32) end
	if DestinyFontHuge then DestinyFontHuge:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 32) end
	if QuestFont_Shadow_Small then QuestFont_Shadow_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 14) end
	if MailFont_Large then MailFont_Large:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 15) end
	if SpellFont_Small then SpellFont_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s6,5.otf]], 12) end
	if InvoiceFont_Med then InvoiceFont_Med:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 12) end
	if InvoiceFont_Small then InvoiceFont_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 10) end
	if AchievementFont_Small then AchievementFont_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 10) end
	if ReputationDetailFont then ReputationDetailFont:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s6,5.otf]], 12) end
	if FriendsFont_Normal then FriendsFont_Normal:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s5,4.otf]], 15) end
	if FriendsFont_11 then FriendsFont_11:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s14,11.otf]], 14) end
	if FriendsFont_Small then FriendsFont_Small:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s13,10.otf]], 13) end
	if FriendsFont_Large then FriendsFont_Large:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s17,14.otf]], 17) end
	if FriendsFont_UserText then FriendsFont_UserText:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 11) end
	if GameFont_Gigantic then GameFont_Gigantic:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s19,16.otf]], 38) end
	if ChatBubbleFont then ChatBubbleFont:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text-s15,13.otf]], 15) end
	if Fancy12Font then Fancy12Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 12) end
	if Fancy14Font then Fancy14Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 14) end
	if Fancy16Font then Fancy16Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 16) end
	if Fancy18Font then Fancy18Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 18) end
	if Fancy20Font then Fancy20Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 20) end
	if Fancy24Font then Fancy24Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 24) end
	if Fancy27Font then Fancy27Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 27) end
	if Fancy30Font then Fancy30Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 30) end
	if Fancy32Font then Fancy32Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 32) end
	if Fancy48Font then Fancy48Font:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\chat.otf]], 48) end
	if SystemFont_NamePlate then SystemFont_NamePlate:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 9) end
	if SystemFont_LargeNamePlate then SystemFont_LargeNamePlate:SetFont([[Interface\AddOns\__REPLACE_IN_BUILD__DIRECTORY__\text.otf]], 12) end
end

GlobalFont.EventHandler = CreateFrame("Frame")
GlobalFont.EventHandler:SetScript("OnEvent", GlobalFont.Register)
GlobalFont.EventHandler:RegisterEvent("ADDON_LOADED")
