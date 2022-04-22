function ComboWarriorOneV1()
	local vulner=FFA_SearchDebuff("target","Уязвимость")
	local weak=FFA_SearchDebuff("target","Слабость")
	local mana=UnitMana("player")
	local CoolDW1=FFA_SkillReady("Пробный выпад")
	local CoolDW2=FFA_SkillReady("Гром")
	
	if (weak and CoolDW2) then
		if mana > 15 then
			CastSpellByName("Гром")
		else 
			UseSkill(1,1)
		end
	else
		if vulner then
			if mana > 10 then
				CastSpellByName("Уязвимость")
			else
				UseSkill(1,1)
			end
		else
			if (CoolDW1 and mana > 20) then
				CastSpellByName("Пробный выпад")
			else
				UseSkill(1,1)
			end
		end
	end
end

function ComboWarriorOneV2()
	local vulner=FFA_SearchDebuff("target","Уязвимость")
	local weak=FFA_SearchDebuff("target","Слабость")
	local mana=UnitMana("player")
	local CoolDW1=FFA_SkillReady("Пробный выпад")
	local CoolDW2=FFA_SkillReady("Гром")
	
	if (weak and CoolDW2) then
		if mana > 15 then
			CastSpellByName("Гром")
		else 
			UseSkill(1,1)
		end
	else
		if vulner then
			if mana > 10 then
				CastSpellByName("Уязвимость")
			else
				UseSkill(1,1)
			end
		else
			if CoolDW1 then
				if mana > 20 then
					CastSpellByName("Пробный выпад")
				else 
					UseSkill(1,1)
				end
			else
				if mana>25 then
					CastSpellByName("Рубящий удар")
				else
					UseSkill(1,1)
				end
			end
		end
	end
end

function ComboWarriorTwoV1()
	local bleed=FFA_SearchDebuff("target","Кровотечение")
	local CoolDW=FFA_SkillReady("Продуманная атака")
	local mana=UnitMana("player")
	
	if (bleed and CoolDW) == true then 
		if mana > 15 then
			CastSpellByName("Продуманная атака")
		else
			UseSkill(1,1)
		end
	else
		if mana >25 then
			CastSpellByName("Рубящий удар")
		else
			UseSkill(1,1)
		end
	end
end

function ComboWarriorTwoV2()
	local bleed=FFA_SearchDebuff("target","Кровотечение")
	local vulner=FFA_SearchDebuff("target","Уязвимость")
	local mana=UnitMana("player")
	local CoolDW1=FFA_SkillReady("Продуманная атака")
	local CoolDW2=FFA_SkillReady("Пробный выпад")
	
	if (bleed and CoolDW1) then
		if mana > 15 then
			CastSpellByName("Продуманная атака")
		else
			UseSkill(1,1)
		end
	else
		if vulner then
			if mana>10 then
				CastSpellByName("Уязвимость")
			else
				UseSkill(1,1)
			end
		else
			if CoolDW2 then
				if mana > 20 then
					CastSpellByName("Пробный выпад")
				else
					UseSkill(1,1)
				end
			else 
				if mana>25 then
					CastSpellByName("Рубящий удар")
				else
					UseSkill(1,1)
				end
			end
		end
	end
end

function ComboWarriorKnightOneV1()
	local vulner=FFA_SearchDebuff("target","Уязвимость")
	local weak=FFA_SearchDebuff("target","Слабость")
	local mana=UnitMana("player")
	local CoolDW1=FFA_SkillReady("Пробный выпад")
	local CoolDW2=FFA_SkillReady("Гром")
	
	if (weak and CoolDW2) then
		if mana > 15 then
			CastSpellByName("Гром")
		else 
			CastSpellByName("Разоружение")
		end
	else
		if vulner then
			if mana > 10 then
				CastSpellByName("Уязвимость")
			else
				CastSpellByName("Разоружение")
			end
		else
			if CoolDW1 then
				if mana > 20 then
					CastSpellByName("Пробный выпад")
				else 
					CastSpellByName("Разоружение")
				end
			else
				if mana>25 then
					CastSpellByName("Рубящий удар")
				else
					CastSpellByName("Разоружение")
				end
			end
		end
	end
end

function ComboWarriorKnightOneV2()
	local vulner=FFA_SearchDebuff("target","Уязвимость")
	local weak=FFA_SearchDebuff("target","Слабость")
	local mana=UnitMana("player")
	local CoolDW1=FFA_SkillReady("Пробный выпад")
	local CoolDW2=FFA_SkillReady("Гром")
	
	if (weak and CoolDW2) then
		if mana > 15 then
			CastSpellByName("Гром")
		else 
			ComboAllKnightEasy()
		end
	else
		if vulner then
			if mana > 10 then
				CastSpellByName("Уязвимость")
			else
				ComboAllKnightEasy()
			end
		else
			if CoolDW1 then
				if mana > 20 then
					CastSpellByName("Пробный выпад")
				else 
					ComboAllKnightEasy()
				end
			else
				if mana>25 then
					CastSpellByName("Рубящий удар")
				else
					ComboAllKnightEasy()
				end
			end
		end
	end
end

function ComboWarriorKnightTwoV1()
	local bleed=FFA_SearchDebuff("target","Кровотечение")
	local vulner=FFA_SearchDebuff("target","Уязвимость")
	local mana=UnitMana("player")
	local CoolDW1=FFA_SkillReady("Продуманная атака")
	local CoolDW2=FFA_SkillReady("Пробный выпад")
	
	if (bleed and CoolDW1) then
		if mana > 15 then
			CastSpellByName("Продуманная атака")
		else
			CastSpellByName("Разоружение")
		end
	else
		if vulner then
			if mana>10 then
				CastSpellByName("Уязвимость")
			else
				CastSpellByName("Разоружение")
			end
		else
			if CoolDW2 then
				if mana > 20 then
					CastSpellByName("Пробный выпад")
				else
					CastSpellByName("Разоружение")
				end
			else 
				if mana>25 then
					CastSpellByName("Рубящий удар")
				else
					CastSpellByName("Разоружение")
				end
			end
		end
	end
end

function ComboWarriorKnightTwoV2()
	local bleed=FFA_SearchDebuff("target","Кровотечение")
	local vulner=FFA_SearchDebuff("target","Уязвимость")
	local mana=UnitMana("player")
	local CoolDW1=FFA_SkillReady("Продуманная атака")
	local CoolDW2=FFA_SkillReady("Пробный выпад")
	
	if (bleed and CoolDW1) then
		if mana > 15 then
			CastSpellByName("Продуманная атака")
		else
			ComboAllKnightEasy()
		end
	else
		if vulner then
			if mana>10 then
				CastSpellByName("Уязвимость")
			else
				ComboAllKnightEasy()
			end
		else
			if CoolDW2 then
				if mana > 20 then
					CastSpellByName("Пробный выпад")
				else
					ComboAllKnightEasy()
				end
			else 
				if mana>25 then
					CastSpellByName("Рубящий удар")
				else
					ComboAllKnightEasy()
				end
			end
		end
	end
end