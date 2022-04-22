function SubPriestBuff()
	if FFA_SearchBuffTime("player","Благословенная родниковая вода") < 60 then
		CastSpellByName("Благословенная родниковая вода")
	else
		if FFA_SearchBuffTime("player","Магический барьер") < 60 then
			CastSpellByName("Магический барьер")
		end
	end
end

function PriestBuff()
	if UnitExists("target") then
		if UnitIsPlayer("target") then
			if UnitIsDeadOrGhost("target") then
				if UnitIsUnit("player","target") then
					DEFAULT_CHAT_FRAME:AddMessage("Сначала воскресни, потом бафнешся")
				else
					DEFAULT_CHAT_FRAME:AddMessage("Сначала воскреси, потом бафай")
				end
			else
				if UnitIsUnit("player","target") then
					if PriestBuffSpecial("player",2) == false then
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

function PriestBuffSpecial(target,version)
	local FFA_MainClass, FFA_SubClass = UnitClass("player")
	
	if FFA_SearchBuffTime(target,"Дар здоровья") < 300 then
		CastSpellByName("Дар здоровья")
		return false
	else
		if FFA_SearchBuffTime(target,"Усиленная атака") < 300 then
			CastSpellByName("Усиленная атака")
			return false
		else
			if version == 0 then
				return true
			else
				if FFA_SearchBuffTime(target,"Благословенная родниковая вода") < 300 then
					CastSpellByName("Благословенная родниковая вода")
					return false
				else
					if FFA_SearchBuffTime(target,"Магический барьер") < 300 then
						CastSpellByName("Магический барьер")
						return false
					else
						if FFA_SubClass == "Воин" then
							if version == 1 then
								return true
							else
								local CoolDW=FFA_SkillReady("Наращивание силы")
								local mana=UnitSkill("player")
	
								if FFA_SearchBuffTime("player","Боевая стойка монаха") < 60 then
									CastSpellByName("Боевая стойка монаха")
									return false
								else
									if (CoolDW and FFA_SearchBuffTime("player","Наращивание силы") < 60) == true then
										CastSpellByName("Наращивание силы")
										return false
									else
										if mana > 25 then
											if FFA_SearchBuffTime("player","Комок ярости") < 60 then
												CastSpellByName("Комок ярости")
												return false
											else
												return true
											end
										else
											DEFAULT_CHAT_FRAME:AddMessage("Вам не хватает ярости")
											return false
										end
									end
								end
							end
						end
						
						if FFA_SubClass == "Скаут" then
							if FFA_SearchBuffTime(target,"Объятия Духа воды") < 300 then
								CastSpellByName("Объятия Духа воды")
								return false
							else
								return true
							end
						end
						
						if FFA_SubClass == "Разбойник" then
							if FFA_SearchBuffTime(target,"Неистовство тени") < 300 then
								CastSpellByName("Неистовство тени")
								return false
							else
								return true
							end
						end
						
						if FFA_SubClass == "Маг" then
							if FFA_SearchBuffTime(target,"Защита от огня") < 200 then
								CastSpellByName("Защита от огня")
								return false
							else
								if FFA_SearchBuffTime("player","Благословение ангела") < 200 then
									CastSpellByName("Благословение ангела")
									return false
								else
									return true
								end
							end
						end
						
						return true
					end
				end
			end
		end
	end
end


function PriestKnightBuff(var)
	if UnitExists("target") then
		if UnitIsPlayer("target") then
			if UnitIsDeadOrGhost("target") then
				if UnitIsUnit("player","target") then
					DEFAULT_CHAT_FRAME:AddMessage("Сначала воскресни, потом бафнешся")
				else
					DEFAULT_CHAT_FRAME:AddMessage("Сначала воскреси, потом бафай")
				end
			else
				if UnitIsUnit("player","target") then
					if var == 1 then
						if PriestKnightBuffSpecial("player",3) == false then
							return
						else
							DEFAULT_CHAT_FRAME:AddMessage("На Вас полный баф")
						end
					else
						if PriestKnightBuffSpecial("player",2) == false then
							return
						else
							DEFAULT_CHAT_FRAME:AddMessage("На Вас полный баф")
						end
					end
				else
					if UnitCanAttack("player","target") then
						DEFAULT_CHAT_FRAME:AddMessage("Ваша цель - враг или ПК-баф")
					else
						if UnitInParty("target") then
							if PriestKnightBuffSpecial("target",1) == false then
								return
							else
								DEFAULT_CHAT_FRAME:AddMessage("На " ..UnitName("target").." висит полный баф")
							end
						else
							if PriestKnightBuffSpecial("target",0) == false then
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

function PriestKnightBuffSpecial(target,version)
	if FFA_SearchBuffTime(target,"Усиленная атака") < 300 then
		CastSpellByName("Усиленная атака")
		return false
	else
		if version == 0 then
			return true
		else
			if FFA_SearchBuffTime(target,"Улучшенный дар здоровья") < 300 then
				CastSpellByName("Дар здоровья")
				return false
			else
				if FFA_SearchBuffTime(target,"Благословенная родниковая вода") < 300 then
					CastSpellByName("Благословенная родниковая вода")
					return false
				else
					if FFA_SearchBuffTime(target,"Магический барьер") < 300 then
						CastSpellByName("Магический барьер")
						return false
					else
						if version == 1 then
							return true
						else
							if FFA_SearchBuffTime("player","Улучшенные доспехи") < 60 then
								CastSpellByName("Улучшенные доспехи")
								return false
							else
								if version == 2 then
									return true
								else
									if FFA_SearchBuffTime("player","Божественная инкарнация") < 60 then
										CastSpellByName("Божественная инкарнация")
										return false
									else
										return true
									end
								end
							end
						end
					end
				end
			end
		end
	end
end