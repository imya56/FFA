function ComboAllKnight(MPFor_ManaReturn)
	if FFA_SearchDebuff("target","Священная печать III") == true then
		if FFA_SkillReady("Угроза") == true then
			CastSpellByName("Угроза")
		else
			if (FFA_SkillReady("Восполнение маны") and UnitMana("player") < MPFor_ManaReturn) == true then
				CastSpellByName("Восполнение маны")
			else
				CastSpellByName("Священный удар")
			end
		end	
	else
		CastSpellByName("Священный удар")
	end
end

function ComboAllKnightV1(MPFor_ManaReturn)
	if KnightBuffForAll()==false then
		return
	else
		if FFA_SearchDebuff("target","Священная печать III") == true then
			if FFA_SkillReady("Угроза") == true then
				CastSpellByName("Угроза")
			else
				if (FFA_SkillReady("Восполнение маны") and UnitMana("player") < MPFor_ManaReturn) == true then
					CastSpellByName("Восполнение маны")
				else
					CastSpellByName("Священный удар")
				end
			end	
		else
			CastSpellByName("Священный удар")
		end
	end
end

function ComboAllKnightV2(MPFor_ManaReturn)
	if KnightBuffForAll()==false then
		return
	else
		if FFA_SearchDebuff("target","Священная печать III") == true then
			if FFA_SkillReady("Угроза") == true then
				CastSpellByName("Угроза")
			else
				if (FFA_SkillReady("Восполнение маны") and UnitMana("player") < MPFor_ManaReturn) == true then
					CastSpellByName("Восполнение маны")
				else
					CastSpellByName("Священный удар")
				end
			end	
		else
			if FFA_SkillReady("Вихревой щит") == true then
				CastSpellByName("Вихревой щит")
			else
				CastSpellByName("Священный удар")
			end
		end
	end
end

function ComboAllKnightEasy()
	if (FFA_SearchDebuff("target","Печать Света III") and FFA_SkillReady("Кара")) == true then
		CastSpellByName("Кара")
	else
		CastSpellByName("Священный удар")
	end
end

function ComboKnightRogueMassAgr()
	if FFA_SkillReady("Вихревой щит") == true then
		CastSpellByName("Вихревой щит")
	else
		if FFA_SkillReady("Танец двух клинков") then
			CastSpellByName("Танец двух клинков")
		else
			CastSpellByName("Священный удар")
		end
	end
end

function ComboKnightRogueMassAgrV1()
	if FFA_SkillReady("Вихревой щит") == true then
		CastSpellByName("Вихревой щит")
	else
		if FFA_SkillReady("Танец двух клинков") then
			CastSpellByName("Танец двух клинков")
		else
			CastSpellByName("Теневой удар")
		end
	end
end


function ComboKnightWarriorMassAgr()
	if FFA_SkillReady("Вихревой щит") == true then
		CastSpellByName("Вихревой щит")
	else
		if FFA_SkillReady("Вихрь") then
			CastSpellByName("Вихрь")
		else
			CastSpellByName("Священный удар")
		end
	end
end

function ComboKnightRogue()
	if FFA_SearchDebuff("target","Разоружение IV") == true then
		CastSpellByName("Теневой удар")
	else
		CastSpellByName("Разоружение")
	end
end
