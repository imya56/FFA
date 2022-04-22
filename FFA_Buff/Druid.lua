function DruidWarriorBuff()
	if FFA_SearchBuffTime("player","Молитва сосредоточенности") < 60 then
		CastSpellByName("Молитва сосредоточенности")
	else
		if FFA_SearchBuffTime("player","Жезл славы") < 60 then
			CastSpellByName("Жезл славы")
		end
	end
end

function DruidRogueBuff()
	if FFA_SearchBuffTime("player","Молитва сосредоточенности") < 60 then
		CastSpellByName("Молитва сосредоточенности")
	else
		if FFA_SearchBuffTime("player","Бурлящая Магия") < 60 then
			CastSpellByName("Бурлящая Магия")
		end
	end
end

function DruidWardenBuff()
	if FFA_SearchBuffTime("player","Молитва сосредоточенности") < 60 then
		CastSpellByName("Молитва сосредоточенности")
	else
		if FFA_SearchBuffTime("player","Колючий щит") < 60 then
			CastSpellByName("Колючий щит")
		else
			if FFA_SearchBuffTime("player","Таинственная награда") < 60 then
				CastSpellByName("Таинственная награда")
			else
				if FFA_SearchBuffTime("player","Благосклонность леса") < 60 then
					CastSpellByName("Благосклонность леса")
				end
			end
		end
	end
end
