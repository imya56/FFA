function WarriorMageBuff(var)
	local FFAIndex1 = FFA_SearchBuffIndex("player","Лавовое оружие")
	local FFAIndex2 = FFA_SearchBuffIndex("player","Электрическая атака")
	
	if FFA_SearchBuffTime("player","Защита от огня") < 60 then
		CastSpellByName("Защита от огня")
	else
		if var == 1 then
			if FFAIndex1==0 then
				if FFA_SearchBuffTime("player","Электрическая атака") < 60 then
					CastSpellByName("Электрическая атака")
				end
			else 
				CancelPlayerBuff(FFAIndex1)
			end
		else
			if var == 2 then
				if FFAIndex2==0 then
					if FFA_SearchBuffTime("player","Лавовое оружие") < 60 then
						CastSpellByName("Лавовое оружие")
					end
				else 
					CancelPlayerBuff(FFAIndex2)
				end		
			end
		end
	end
end

function WarriorKnightBuff()
	if FFA_SearchBuffTime("player","Улучшенные доспехи") < 60 then
		CastSpellByName("Улучшенные доспехи")
	else
		if FFA_SearchBuffTime("player","Блокирующая стойка") < 60 then
			CastSpellByName("Блокирующая стойка")
		end
	end
end

function WarriorWardenBuff()
	if FFA_SearchBuffTime("player","Колючий щит") < 60 then
		CastSpellByName("Колючий щит")
	else
		if FFA_SearchBuffTime("player","Боевая уверенность") < 60 then
			CastSpellByName("Боевая уверенность")
		end
	end
end

