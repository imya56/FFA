function ScoutWarriorBuff()
	local mana=UnitSkill("player")

	if FFA_SearchBuffTime("player","Морозная стрела") < 60 then
		CastSpellByName("Морозная стрела")
	else
		if (mana > 30 and FFA_SearchBuffTime("player","Боевое чутье") < 60) then
			CastSpellByName("Боевое чутье")
		end
	end
end

function ScoutMageBuff()
	if FFA_SearchBuffTime("player","Морозная стрела") < 60 then
		CastSpellByName("Морозная стрела")
	else
		if FFA_SearchBuffTime("player","Пылающая энергия") < 60 then
			CastSpellByName("Пылающая энергия")
		else
			if FFA_SearchBuffTime("player","Защита от огня") < 60 then
				CastSpellByName("Защита от огня")
			end
		end
	end
end

function ScoutPriestBuff()
	if FFA_SearchBuffTime("player","Морозная стрела") < 60 then
		CastSpellByName("Морозная стрела")
	else
		if FFA_SearchBuffTime("player","Магический барьер") < 60 then
			CastSpellByName("Магический барьер")
		else
			if FFA_SearchBuffTime("player","Благословенная родниковая вода") < 60 then
				CastSpellByName("Благословенная родниковая вода")
			end
		end
	end
end

function ScoutKnightBuff()
	if FFA_SearchBuffTime("player","Морозная стрела") < 60 then
		CastSpellByName("Морозная стрела")
	else
		if FFA_SearchBuffTime("player","Улучшенные доспехи") < 60 then
			CastSpellByName("Улучшенные доспехи")
		end
	end
end

function ScoutWardenBuff()
	if FFA_SearchBuffTime("player","Морозная стрела") < 60 then
		CastSpellByName("Морозная стрела")
	else
		if FFA_SearchBuffTime("player","Колючий щит") < 60 then
			CastSpellByName("Колючий щит")
		else
			if FFA_SearchBuffTime("player","Подношение молодых энтов") < 60 then
				CastSpellByName("Подношение молодых энтов")
			end
		end
	end
end

function ScoutDruidBuff()
	if FFA_SearchBuffTime("player","Морозная стрела") < 60 then
		CastSpellByName("Морозная стрела")
	else
		if FFA_SearchBuffTime("player","Сосредоточение") < 60 then
			CastSpellByName("Сосредоточение")
		end
	end
end