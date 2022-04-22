function CombPriest()
	if FFA_SearchDebuff("player","Ослабленное лечение") == false then
		CastSpellByName("Исцеление группы")
	else
		if FFA_SearchBuff("target","Регенерация")==false then
			CastSpellByName("Регенерация")
		else
			CastSpellByName("Лечение")
		end
	end
end

function dru() 
	CastSpellByName('Восстановление')
end
