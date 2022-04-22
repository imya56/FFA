function RogueKnightBuff()
	if (FFA_SearchBuff("player","Исчезновение") or FFA_SearchBuff("player","Скрыться"))==false then
		if FFA_SearchBuffTime("player","Улучшенные доспехи") < 90 then
			CastSpellByName("Улучшенные доспехи")
		else
			if FFA_SearchBuffTime("player","Палящий свет") < 90 then
				CastSpellByName("Палящий свет")
			else
				if FFA_SearchBuffTime("player","Львиная защита") < 90 then
					CastSpellByName("Львиная защита")
				end
			end
		end
	end
end

function RoguePriestBuff()
	if (FFA_SearchBuff("player","Исчезновение") or FFA_SearchBuff("player","Скрыться"))==false then
		if FFA_SearchBuffTime("player","Магический барьер") < 60 then
			CastSpellByName("Магический барьер")
		else
			if FFA_SearchBuffTime("player","Благословенная родниковая вода") < 60 then
				CastSpellByName("Благословенная родниковая вода")
			else
				if FFA_SearchBuffTime("player","Аура быстроты") < 60 then
					CastSpellByName("Аура быстроты")
				end
			end
		end
	end
end

function RogueWardenBuff()
	if (FFA_SearchBuff("player","Исчезновение") or FFA_SearchBuff("player","Скрыться"))==false then
		if FFA_SearchBuffTime("player","Колючий щит") < 60 then
			CastSpellByName("Колючий щит")
		else
			if FFA_SearchBuffTime("player","Затягивающиеся раныр") < 60 then
				CastSpellByName("Затягивающиеся раны")
			end
		end
	end
end
