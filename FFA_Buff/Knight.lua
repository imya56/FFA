function GeneralKnightBuff()
	if FFA_SearchBuffTime("player","Улучшенные доспехи") < 60 then
		CastSpellByName("Улучшенные доспехи")
	else
		if FFA_SearchBuffTime("player","Священная печать") < 60 then
			CastSpellByName("Священная печать")
		end
	end
end

function KnightBuffForAll()
	local FFA_MainClass, FFA_SubClass = UnitClass("player")
	if FFA_SearchBuffTime("player","Улучшенные доспехи") < 60 then
		CastSpellByName("Улучшенные доспехи")
		return false
	else
		if FFA_SearchBuffTime("player","Священная печать") < 60 then
			CastSpellByName("Священная печать")
			return false
		else
			if FFA_SubClass == "Разбойник" then
				if FFA_SearchBuff("player","Безумные клинки") == false then
					CastSpellByName("Безумные клинки")
					return true
				end
			else
				if subClass == "Маг" then
					if FFA_SearchBuffTime("player","Броня молний") < 60 then
						CastSpellByName("Броня молний")
						return true
					end
				end	
			end	
		end
	end
end