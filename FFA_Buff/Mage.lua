function MageWarriorBuff()
	local mana=UnitSkill("player")
	
	if FFA_SearchBuffTime("player","Защита от огня") < 60 then
		CastSpellByName("Защита от огня")
	else
		if mana > 35 then
			if FFA_SearchBuffTime("player","Элементальный взрыв") < 60 then
				CastSpellByName("Элементальный взрыв")
			else
				if FFA_SearchBuffTime("player","Магическое просветление") < 60 then
					CastSpellByName("Магическое просветление")		
				else
					if FFA_SearchBuffTime("player","Магическое дарование") < 60 then
						CastSpellByName("Магическое дарование")
					end
				end
			end
		else
			if FFA_SkillReady("Активация маны") == true then
				CastSpellByName("Активация маны")
			end
		end
	end
end

function MageScoutBuff(var)
	local FFAIndex1 = FFA_SearchBuffIndex("player","Сила Ветра")
	local FFAIndex2 = FFA_SearchBuffIndex("player","Огненная стрела")
	
	if FFA_SearchBuffTime("player","Защита от огня") < 60 then
		CastSpellByName("Защита от огня")
	else
		if var == 1 then
			if FFAIndex1==0 then
				if FFA_SearchBuffTime("player","Огненная стрела") < 60 then
					CastSpellByName("Огненная стрела")
				end
			else 
				CancelPlayerBuff(FFAIndex1)
			end
		else
			if var == 2 then
				if FFAIndex2==0 then
					if FFA_SearchBuffTime("player","Сила Ветра") < 60 then
						CastSpellByName("Сила Ветра")
					end
				else 
					CancelPlayerBuff(FFAIndex2)
				end		
			end
		end
	end
end

function MageRogueBuff()
	if FFA_SearchBuffTime("player","Защита от огня") < 60 then
		CastSpellByName("Защита от огня")
	else
		if FFA_SearchBuffTime("player","Ритуал клыка") < 60 then
			CastSpellByName("Ритуал клыка")
		else
			if FFA_SearchBuffTime("player","Защита тени") < 60 then
				CastSpellByName("Защита тени")
			end
		end
	end
end

function MagePriestBuff()
	if UnitExists("target") then
		if UnitIsPlayer("target") then
			if UnitIsDeadOrGhost("target") then
				if UnitIsUnit("player","target") then
					DEFAULT_CHAT_FRAME:AddMessage("Сначала воскресни, потом бафнешся")
				else
					DEFAULT_CHAT_FRAME:AddMessage(UnitName("target").." - мертв")
				end
			else
				if UnitIsUnit("player","target") then
					if PriestBuffSpecial("player",1) == false then
						return
					else
						DEFAULT_CHAT_FRAME:AddMessage("На Вас полный баф")
					end
				else
					if UnitCanAttack("player","target") then
						DEFAULT_CHAT_FRAME:AddMessage("Ваша цель - враг или ПК-баф")
					else
						if UnitInParty("target") then
							if PriestBuffSpecial("target",1) == false then
								return
							else
								DEFAULT_CHAT_FRAME:AddMessage("На " ..UnitName("target").." висит полный баф")
							end
						else
							if PriestBuffSpecial("target",0) == false then
								return
							else
								DEFAULT_CHAT_FRAME:AddMessage("На " ..UnitName("target").." висит полный баф")
							end
						end
					end
				end
			end
		else
			DEFAULT_CHAT_FRAME:AddMessage("Цель не игрок")
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("Выберите цель")
	end
end

function MagePriestBuffSpecial(target,version)
	if FFA_SearchBuffTime(target,"Эссенция магии") < 300 then
		CastSpellByName("Эссенция магии")
		return false
	else
		if version == 0 then
			return true
		else
			if FFA_SearchBuffTime(target,"Защита от огня") < 200 then
				CastSpellByName("Защита от огня")
				return false
			else
				return true
			end
		end
	end
end


function MageKnightBuff()
	if FFA_SearchBuffTime("player","Улучшенные доспехи") < 60 then
		CastSpellByName("Улучшенные доспехи")
	else
		if FFA_SearchBuffTime("player","Вестник Света") < 60 then
			CastSpellByName("Вестник Света")
		else
			if FFA_SearchBuffTime("player","Защита от огня") < 300 then
				CastSpellByName("Защита от огня")
			end
		end
	end
end

function MageWardenBuff()
	if FFA_SearchBuffTime("player","Власть Земли") < 60 then
		CastSpellByName("Власть Земли")
	else
		if FFA_SearchBuffTime("player","Защита от огня") < 60 then
			CastSpellByName("Защита от огня")
		else
			if FFA_SearchBuffTime("player","Колючий щит") < 60 then
				CastSpellByName("Колючий щит")
			end
		end
	end
end

function MageDruidBuff()
	if FFA_SearchBuffTime("player","Восприятие") < 60 then
		CastSpellByName("Восприятие")
	else
		if FFA_SearchBuffTime("player","Защита от огня") < 60 then
			CastSpellByName("Защита от огня")
		else
			if FFA_SearchBuffTime("player","Магическая цель") < 60 then
				CastSpellByName("Магическая цель")
			end
		end
	end
end
