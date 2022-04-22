function ComboKnightSchrodinger()
	if (FFA_SearchDebuff("target","Печать Света III") and FFA_SkillReady("Кара")) == true then
		CastSpellByName("Кара")
	else
		if FFA_TrueOrFalse == true then 
			CastSpellByName("Священный удар")
			FFA_TrueOrFalse = false
		else
			CastSpellByName("Разоружение")
			FFA_TrueOrFalse = true
		end
	end
end


function TESTTEST()
	if FFA_SearchBuff("player","Информатор") == false and FFA_SkillReady("Информатор") == true then
		CastSpellByName("Информатор")
	else
		if FFA_SearchBuff("player","Волнение") or FFA_SearchBuff("player","Кипение крови") or FFA_SearchBuff("player","Бессмертие") == false then
			CastSpellByName("Неясность выбора")
		else
			if FFA_SkillReady("Яростная атака") == true then
				CastSpellByName("Яростная атака")
			else
				if FFA_SkillReady("Ярость убийцы") == true then
					CastSpellByName("Ярость убийцы")
				end
			end
		end
	end
end
