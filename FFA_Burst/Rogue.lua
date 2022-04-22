function RogueBurst()
	if FFA_SearchBuff("player","Информатор") == false and FFA_SkillReady("Информатор") == true then
		CastSpellByName("Информатор")
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

function RogueWarriorBurst()
	local mana=UnitSkill("player")
	
	if FFA_SearchBuff("player","Информатор") == false and FFA_SkillReady("Информатор") == true then
		CastSpellByName("Информатор")
	else
		if FFA_SkillReady("Берсерк") == true and mana> 24 then
			CastSpellByName("Берсерк")
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

function RogueWarriorBurstV2()
	local mana=UnitSkill("player")
	
	if FFA_SearchBuff("player","Информатор") == false and FFA_SkillReady("Информатор") == true then
		CastSpellByName("Информатор")
	else
		if (FFA_SearchBuff("player","Волнение") or FFA_SearchBuff("player","Кипение крови") or FFA_SearchBuff("player","Бессмертие")) == false then
			CastSpellByName("Неясность выбора")
		else
			if FFA_SkillReady("Берсерк") == true and mana> 24 then
				CastSpellByName("Берсерк")
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
end

function RogueBurstV2()
	if FFA_SearchBuff("player","Информатор") == false and FFA_SkillReady("Информатор") == true then
		CastSpellByName("Информатор")
	else
		if (FFA_SearchBuff("player","Волнение") or FFA_SearchBuff("player","Кипение крови") or FFA_SearchBuff("player","Бессмертие")) == false then
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