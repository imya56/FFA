
local isKlin = false;
local raidNum = 1;

--dots for druid priest
function drpr() 
	local unit = "target";

	local myHp = UnitHealth('player');

	if (myHp < 60) then
		CastSpellByName('Восстановление', 'player')
	end
	
	if (not FFA_SearchBuff(unit, 'Жизнецветение')) then
		CastSpellByName('Жизнецветение')
	end
	
	if (not FFA_SearchBuff(unit, 'Восстановление')) then
		CastSpellByName('Восстановление')
	end

	CastSpellByName('Восстановление жизни')
end

function healDots() 
 
	local unit = 'raid' .. raidNum;

	if (FFA_SearchBuff('Жизнецветение', unit) and FFA_SearchBuff('Восстановление', unit)) then
			raidNum = raidNum + 1;
			ootoafeiDots();
	end

	if (not FFA_SearchBuff('Жизнецветение', unit)) then
		CastSpellByName('Жизнецветение', unit)
	end

	if (not FFA_SearchBuff('Восстановление', unit)) then
		CastSpellByName('Восстановление', unit)
	end
end

function zambakRKAtlas()
	if (FFA_SearchBuffTime('player', 'Тщательная подготовка') < 3) then
		if(UnitIsDeadOrGhost("target")) then
			TargetNearestEnemy()
		end
		CastSpellByName('Атака в рану');
	end

	if ( not FFA_SearchBuff('player', '')) then --svet
		CastSpellByName('');
	end

	if (FFA_SkillReady('Тщательная подготовка')) then
		CastSpellByName('Тщательная подготовка')
	end
end

 

function ootoafeiDots() 
	raidNum = raidNum + 1;
	local unit = 'raid' .. raidNum;

	if (not UnitExists(unit)) then 
		raidNum = 0;
		ootoafeiDots();
	end

	-- if (FFA_SkillReady('Дождь света')) then 
	-- 	SpellTargetUnit();
	-- 	CastSpellByName('Дождь света')
	-- end

	if (FFA_SearchBuff('Жизнецветение', unit) and FFA_SearchBuff('Регенерация', unit) 
		and FFA_SearchBuff('Восстановление', unit)) then
			ootoafeiDots();
	end

	if (not FFA_SearchBuff('Жизнецветение', unit)) then
		CastSpellByName('Жизнецветение', unit)
	end

	if (not FFA_SearchBuff('Восстановление', unit)) then
		CastSpellByName('Восстановление', unit)
	end



end

function test()

	for i= 1,12 do

		local unit = 'raid' .. i;
		if not UnitIsUnit('player', unit) then 
		  break
	  	end

	   if(FFA_SearchDebuff(unit, 'name skill')) then
		  SendChatMessage('hand debuff on ' .. UnitName(unit) , "PARTY")
		  break
	   end

  end
end

function testfns()
	local name, maxTime, currentTime = UnitCastingTime( 'target' );
	local name, unk1, icon, unk2, rank, type, upgradeCost, isSkillable, isAvailable = GetSkillDetail(4,10);

	SendChatMessage(name .. ' ' .. unk1 .. ' ' .. icon .. ' ' .. unk2 .. ' ' .. rank .. ' ' .. type .. ' ' .. upgradeCost .. ' ', "PARTY")
end

function stefaniRG()
	if ((not FFA_SearchBuff('player', 'Яд')) and (FFA_SkillReady('Яд'))) then 
		CastSpellByName('Яд');
	end

	if not FFA_SearchBuff('player', 'Разорка тени') then 
		CastSpellByName('Разборка тени');
	end

	if not FFA_SearchDebuff('target', 'Кровотечение') then 
		CastSpellByName('Теневой удар');
	end

	if (FFA_SearchDebuff('target', 'Кровотечение') and FFA_SearchDebuff('target', 'Тяжелое ранение')
		 and FFA_SkillReady('Атака в рану')) then
			CastSpellByName('Атака в рану');
	end

	CastSpellByName('Удар током')


end



function Z123()
	local mana=UnitMana("player")

	if not FFA_SearchBuff("player", "Искажающий заряд") then
		CastSpellByName('Искажающий заряд')
	end
	if not FFA_SearchDebuff("target", "Психическая слабость") then
		CastSpellByName('Призрачный удар')
	end

	if ( mana > 34 and FFA_SkillReady('Атака в рану') and FFA_SearchDebuffTime('target', 'Тяжелое ранение') >= 1 and FFA_SearchDebuffTimeById('target', 620313) >= 1 )  then
		CastSpellByName('Атака в рану')
	end 

	if(mana > 19 and FFA_SearchDebuffTimeById('target', 620313) <= 1 ) then 
		CastSpellByName('Теневой удар')
	end 
	
	if (mana > 29) then
		CastSpellByName('Подлый удар')
	end
	
	if (FFA_SkillReady('Укол души')) then
		CastSpellByName('Укол души')
	end
	
	if (FFA_SkillReady('Бросок')) then
		CastSpellByName('Бросок')
	end 
		UseSkill(1,1)
end

function zambakRB() 
	local mana=UnitMana("player")
	if FFA_SkillReady('Бросок') then 
		CastSpellByName('Бросок')
	end
	if FFA_SkillReady('Комбо Бросок') then 
		CastSpellByName('Комбо Бросок')
	end
	if ( mana > 34 and FFA_SkillReady('Атака в рану') and FFA_SearchDebuffTime('target', 'Тяжелое ранение') >= 1 and FFA_SearchDebuffTimeById('target', 620313) >= 1 
		or (FFA_SearchDebuffTime('target', 'Кровотечение от удара исподтишка') >= 1) )  then
		CastSpellByName('Атака в рану')
	end 

	if(mana > 19 and FFA_SearchDebuffTimeById('target', 620313) <= 1 ) then 
		CastSpellByName('Теневой удар')
	end 
	
	if (mana > 29) then
		CastSpellByName('Подлый удар')
	end
end


function zambakRK() 
	local mana=UnitMana("player")
	if ( mana > 34 and FFA_SkillReady('Атака в рану') and FFA_SearchDebuffTime('target', 'Тяжелое ранение') >= 1 and FFA_SearchDebuffTimeById('target', 620313) >= 1 
		or (FFA_SearchDebuffTime('target', 'Кровотечение от удара исподтишка') >= 1) )  then
		CastSpellByName('Атака в рану')
	end 

	-- if (FFA_SkillReady('Разоружение')) then
	-- 	CastSpellByName('Разоружение')
	-- end

	-- if FFA_SkillReady('Кара') and (chechKara() == true) then
	-- 	CastSpellByName('Кара')
	-- end

	-- if (chechKara == false) then
	-- 	CastSpellByName('Священный удар')
	-- end

	if(mana > 19 and FFA_SearchDebuffTimeById('target', 620313) <= 1 ) then 
		CastSpellByName('Теневой удар')
	end 
	
	if (mana > 29) then
		CastSpellByName('Подлый удар')
	else 
		CastSpellByName('Священный удар')
	end
end
 
function zambakSW() 
	os = require('os')
	SendChatMessage(os.time(os.date("!*t")), 'PARTY')
	if (not FFA_SearchBuff('player', 'Захват цели')) then
		CastSpellByName('Захват цели')
	end

	if (not FFA_SearchBuff('player', 'Боевое чутье')) then
		CastSpellByName('Боевое чутье')
	end

	if (not FFA_SearchBuff('player', 'Бешенство')) then
		CastSpellByName('Выстрел')
	end

	if (FFA_SearchDebuff('target', 'Эффект истощения маны') and FFA_SkillReady('Снайперский выстрел')) then
		CastSpellByName('Снайперский выстрел')
	end

    -- истощения маны

	if (GetActionUsable(5)) then 
		CastSpellByName('Удар в сустав')
	end

	if (not FFA_SearchDebuff('target', 'Эффект истощения маны') and FFA_SkillReady('Выстрел истощения маны')) then
		CastSpellByName('Выстрел истощения маны')
	end

	CastSpellByName('Стрелы ветра')


end


function zambakRKT() 
	local mana=UnitMana("player")
	if ( mana > 34 and FFA_SkillReady('Атака в рану') and FFA_SearchDebuffTime('target', 'Тяжелое ранение') >= 1 and FFA_SearchDebuffTimeById('target', 620313) >= 1 
		or (FFA_SearchDebuffTime('target', 'Кровотечение от удара исподтишка') >= 1) )  then
		CastSpellByName('Атака в рану')
	end 

	if (FFA_SkillReady('Разоружение')) then
		CastSpellByName('Разоружение')
	end

	if FFA_SkillReady('Кара') and (chechKara() == true) then
		CastSpellByName('Кара')
	end

	if (chechKara == false) then
		CastSpellByName('Священный удар')
	end

	if(mana > 19 and FFA_SearchDebuffTimeById('target', 620313) <= 1 ) then 
		CastSpellByName('Теневой удар')
	end 
	
	if (mana > 29) then
		CastSpellByName('Подлый удар')
	else 
		CastSpellByName('Священный удар')
	end
end

function zambakRD() 
	local mana=UnitMana("player")
	if ( mana > 34 and FFA_SkillReady('Атака в рану') and FFA_SearchDebuffTime('target', 'Тяжелое ранение') >= 1 and FFA_SearchDebuffTimeById('target', 620313) >= 1 
		or (FFA_SearchDebuffTime('target', 'Кровотечение от удара исподтишка') >= 1) )  then
		CastSpellByName('Атака в рану')
	end 

	if(mana > 19 and FFA_SearchDebuffTimeById('target', 620313) <= 1 ) then 
		CastSpellByName('Теневой удар')
	end 
	
	if (mana > 29) then
		CastSpellByName('Подлый удар')
	else 
		CastSpellByName('Земной пульс')
	end
end

function zambakRP() 
	local mana=UnitMana("player")

	if (not FFA_SearchBuff('player', 'Устремленный яд')) then
		CastSpellByName('Замедляющий яд')
	end

	if ( ( mana > 34 and FFA_SkillReady('Атака в рану') and 
	FFA_SearchDebuffTime('target', 'Тяжелое ранение') >= 1 ) and 
	(FFA_SearchDebuffTimeById('target', 620313) >= 1 or FFA_SearchDebuffTime('target', 'Кровотечение от удара исподтишка') >= 1 ) ) then
		CastSpellByName('Атака в рану')
	end 

	if((mana > 19) and (FFA_SearchDebuffTimeById('target', 620313) <= 1 or FFA_SearchDebuffTime('target', 'Кровотечение от удара исподтишка') <= 1)) then 
		CastSpellByName('Удар исподтишка')
	end 
	
	if (mana > 29) then
		CastSpellByName('Подлый удар')
	else
		CastSpellByName('Пинок')
	end
end

function ZambakRW() 

	local mana=UnitMana("player")

	if (FFA_SearchBuff('player', 'Искажающий заряд') == false ) then
		CastSpellByName('Искажающий заряд')
	end
	
	if (FFA_SearchBuff('player', 'Извлечение души')) then  
		if ( (FFA_SearchDebuffTimeById("target", 620313) > 1) and (FFA_SearchDebuffTime("target", "Тяжелое ранение") > 1) and (FFA_SkillReady('Атака в рану')) and (mana > 34) ) then
			CastSpellByName('Атака в рану')
		end

		if (FFA_SkillReady('Пожиратель жизни')) then 
			CastSpellByName('Пожиратель жизни');
		end 
	end

	if (not FFA_SearchBuff('player', 'Извлечение души')) then 
		CastSpellByName('Извлекатель душ');
	end


	if (FFA_SearchDebuffTimeById("target", 620313) <= 1 and mana > 19) then
		CastSpellByName('Теневой удар');
	end
	
	if (mana > 29) then
		CastSpellByName('Подлый удар')
	end

end


function zambakSG() 
	if (FFA_buffStack('Фатальный выстрел', 'player') < 4 and FFA_SkillReady('Фатальный выстрел')) then 
		CastSpellByName('Фатальный выстрел');
	end
	
	if (FFA_buffStack('Фатальный выстрел', 'player') >= 5 and FFA_SkillReady('Снайперский выстрел')) then 
		CastSpellByName('Снайперский выстрел')
	end

	if (FFA_buffStack('Фатальный выстрел', 'player') >= 3 and FFA_SkillReady('Комбовыстрел')) then 
		CastSpellByName('Комбовыстрел')
	end

	if (GetActionUsable(5)) then
		CastSpellByName('Удар в сустав')
	end

	if (FFA_SkillReady('Выстрел')) then 
		CastSpellByName('Выстрел')
	end
	
	CastSpellByName('Выстрел ветра')
end

function zambakSGextension() 
	if (FFA_SkillReady('Выстрел')) then
		CastSpellByName('Выстрел')
	end
		CastSpellByName('Выстрел ветра')
end

function  zambakSG2() 
	if (FFA_buffStack('Фатальный выстрел', 'player') < 4 and FFA_SkillReady('Фатальный выстрел')) then 
		CastSpellByName('Фатальный выстрел');
	end

	if (FFA_buffStack('Фатальный выстрел', 'player') >= 4 and FFA_SkillReady('Снайперский выстрел')) then 
		CastSpellByName('Снайперский выстрел')
	end

	if (FFA_buffStack('Фатальный выстрел', 'player') >= 3 and FFA_SkillReady('Комбовыстрел')) then 
		CastSpellByName('Комбовыстрел')
	end

	if (FFA_SkillReady('Выстрел')) then 
		CastSpellByName('Выстрел')
	end

	CastSpellByName('Выстрел ветра')
end

function ZambakGW() 

	if FFA_SkillReady('Руководство природы') then 
		CastSpellByName('Руководство природы')
	end

	if (not FFA_SearchBuff('player', 'Приток рунной энергии')) then
		CastSpellByName('Приток рунной энергии')
	end


	if (not FFA_SearchBuff('player', 'Кузница')) then 
		CastSpellByName('Кузница')
	end

	
	if (not FFA_SearchBuff('player', 'Атака - лучшая защита')) then 
		CastSpellByName('Атака - лучшая защита')
	end

	if (FFA_SearchBuff('player', 'Рунная перезагрузка') and UnitMana('player') > 20
		and FFA_SkillReady('Снабжение энергии')) then

		CastSpellByName('Снабжение энергии')

	end
	-- target is not a boss
	if (UnitSex('target') < 2) then
		CastSpellByName('Сила Духа Леса');
	end

	if (FFA_SearchBuff('player', 'Взаимосвязь')) then
		CastSpellByName('Рунный импульс')
	end


end

function chechKara() 
	if FFA_SearchDebuff('target', 'Священная печать 1') or FFA_SearchDebuff('target', 'Священная печать 2') 
	or FFA_SearchDebuff('target', 'Священная печать 3') or FFA_SearchDebuff('target', 'Священная печать 4') then 
		return true;
	else 
		return false;
	end
		
end

function zambakBS() 
	if (FFA_SkillReady('Смертельные стрелы')) then 
		CastSpellByName('Смертельные стрелы')
	end
	if (FFA_SkillReady('Удар в сустав') and UnitMana('player') >= 15) then 
		CastSpellByName('Удар в сустав')
	end
	if (FFA_SkillReady('Выстрел')) then 
		CastSpellByName('Выстрел')
	end
	
end


function zambakMWrlc() 
	local value1, castSpeedAdditional = GetPlayerAbility('MAGIC_CASTSPEED') 

	if (not FFA_SearchDebuff('target', 'Забытая черная магия')) then
		CastSpellByName('Забытая черная магия')
	end

	
	if (not FFA_SearchDebuff('target', 'Стихийная слабость')) then
		CastSpellByName('Стихийная слабость')
	end

	if (not FFA_SearchBuff('player', 'Прилив энергии')) then
		CastSpellByName('Прилив энергии')
	end

	if (not FFA_SearchBuff('player', 'Искажающий заряд')) then
		CastSpellByName('Искажающий заряд')
	end

	if (not FFA_SearchBuff('player', 'Плазменный эффект')) then
		if (FFA_SkillReady('Разряд')) then 
			CastSpellByName('Разряд') 
		else
			if ((not FFA_buffStack('Гордость духа огня', 'player')) or (FFA_SearchDebuffTime('player', 'Гордость духа огня') > 4) ) then  
				CastSpellByName('Электростатический взрыв')  
			else
				CastSpellByName('Электрическая стрела') 	
			end
		
		end
	end
 
	if (FFA_buffStack('Гордость духа огня', 'player') < 2 or FFA_SearchBuffTime('player', 'Гордость духа огня') < 4) then 
		CastSpellByName('Электростатический взрыв') 
	end

	if (FFA_buffStack('Гордость духа ветра', 'player') < 2 or FFA_SearchBuffTime('player', 'Гордость духа ветра') < 4) then 
		CastSpellByName('Пламя')
	end

	if (FFA_buffStack('Гордость духа огня', 'player') >= 2 and castSpeedAdditional >= 75 ) then
		CastSpellByName('Пламя')
	end 
	
	-- if (FFA_buffStack('Гордость духа огня', 'player') >= 2 and FFA_SkillReady('Огненный шар')) then
	-- 	CastSpellByName('Огненный шар')
	-- end 

	if (FFA_buffStack('Гордость духа ветра', 'player') >= 2) then
		CastSpellByName('Электростатическое поле') 
	end

	
end

function zambakDW() 
	if (FFA_buffStack('Сила Природы', 'player') < 18) then
		CastSpellByName('Сосредоточен на природе')
	end

	if (not FFA_SearchDebuff('target','Семя слабости')) then
		CastSpellByName('Семя слабости')
	end

	if (not FFA_SearchDebuff('target','Семя увядания')) then
		CastSpellByName('Семя увядания')
	end

	if ((not FFA_SearchBuff('player', 'Искажающий заряд')) and FFA_SkillReady('Искажающий заряд')) then
		CastSpellByName('Искажающий заряд')
	end

	if (FFA_debuffStack('Фатальный токсин', 'target') == 2) then
		CastSpellByName('Яд природы')
	else
		CastSpellByName('Токсичная стрела')
	end
end

function cilarTM() 
	-- /script ReloadUI()

	local mirmeksIndex = FFA_getSuitSkillIndex('Серп Мирмекса', 'knight');
	local klinokIndex = FFA_getSuitSkillIndex('Священный клинок грома', 'knight');

	local saveMode = false;
	if (FFA_SearchDebuff('target', 'Священная печать 4') and FFA_Cooldown_time(4, 8) <= 3) then
		saveMode = true;
	end 
	-- if (FFA_SearchDebuff('target', 'Разоружение IV')) then 
	-- 	DEFAULT_CHAT_FRAME:AddMessage('Разоружение yes')
	-- else
	-- 	DEFAULT_CHAT_FRAME:AddMessage('Разоружение no')
	-- end 
	-- if (FFA_SearchDebuff('target', 'Разоружение IV')) then 
		-- DEFAULT_CHAT_FRAME:AddMessage(FFA_SearchDebuffTime('Разоружение IV', 'target'))
	-- else
	-- 	DEFAULT_CHAT_FRAME:AddMessage('Разоружение no')
	-- end 

	-- DEFAULT_CHAT_FRAME:AddMessage(FFA_SearchDebuff('target', 'Разоружение IV'))
	-- DEFAULT_CHAT_FRAME:AddMessage(FFA_SearchDebuffTime('Разоружение IV', 'target'))

	if (not FFA_SearchBuff('player', 'Область Священного Света')) then 
		CastSpellByName('Область Священного Света');
		else if (FFA_SkillReady('Взрыв священной силы')) then 
			CastSpellByName('Взрыв священной силы');
			else if (FFA_SkillReady('Священная печать') and not FFA_SearchDebuff('target', 'Священная печать 4')) then
				CastSpellByName('Священная печать');
				else if ((saveMode and FFA_SkillReady('Угроза')) or (not FFA_SearchBuff('player', 'Угроза'))) then
					saveMode = false;
					CastSpellByName('Угроза');
					else if (FFA_SearchBuff('player', 'Взрыв священной силы') and FFA_SkillReady('Удар щита правды')) then 
						CastSpellByName('Удар щита правды')
							else if (FFA_SkillReady('Вихревой щит')) then 
								CastSpellByName('Вихревой щит');
								else if (FFA_SuitSkillReady(klinokIndex)) then 
									CastSpellByName('Священный клинок грома');
									else if (FFA_SuitSkillReady(mirmeksIndex)) then 
										CastSpellByName('Серп Мирмекса');
										else if (FFA_SkillReady('Военная молитва')) then 
											CastSpellByName('Военная молитва');
												else if (not FFA_SearchDebuff('target', 'Разоружение IV') or FFA_SearchDebuffTime( 'target', 'Разоружение IV') < 4) then 
														CastSpellByName('Разоружение');
														else
															CastSpellByName('Священный удар')
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
 					
end


function ComboRogue()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local CoolDW=FFA_Cooldown(4,3)
		
	if ((bleed1 or bleed2 or bleed3) and wound and CoolDW) == true then
		CastSpellByName("Атака в рану")
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			CastSpellByName("Подлый удар")
		else 
			CastSpellByName("Теневой удар")
		end
	end
end

function ComboRogueKnight()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local mana=UnitMana("player")
	local CoolDW=FFA_Cooldown(4,3)
	
	if ((bleed1 or bleed2 or bleed3) and wound) == true then
		if (mana>34 and CoolDW) == true then 
			CastSpellByName("Атака в рану")
		else
			CastSpellByName("Священный удар")
		end
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			if mana>29 then 
				CastSpellByName("Подлый удар")
			else
				CastSpellByName("Священный удар")
			end
		else 
			if mana>19 then	
				CastSpellByName("Теневой удар")
			else
				CastSpellByName("Священный удар")
			end
		end
	end
end

function ComboRogueKnightV1()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local mana=UnitMana("player")
	local CoolDW=FFA_Cooldown(4,3)
	
	if ((bleed1 or bleed2 or bleed3) and wound) == true then
		if CoolDW == true then
			if mana>34 then
				CastSpellByName("Атака в рану")
			else
				CastSpellByName("Священный удар")
			end
		else
			if mana>64 then
				CastSpellByName("Подлый удар")
			else
				CastSpellByName("Священный удар")
			end
		end
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			if mana>29 then 
				CastSpellByName("Подлый удар")
			else
				CastSpellByName("Священный удар")
			end
		else 
			if mana>19 then
				CastSpellByName("Теневой удар")
			else
				CastSpellByName("Священный удар")
			end
		end
	end
end

function ComboRogueKnightV2()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local mana=UnitMana("player")
	local CoolDW=FFA_Cooldown(4,3)
	
	if ((bleed1 or bleed2 or bleed3) and wound) == true then
		if CoolDW == true then
			if mana>34 then
				CastSpellByName("Атака в рану")
			else
				ComboRogV1()
			end
		else
			if mana>64 then
				CastSpellByName("Подлый удар")
			else
				ComboRogV1()
			end
		end
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			if mana>29 then 
				CastSpellByName("Подлый удар")
			else
				ComboRogV1()
			end
		else 
			if mana>19 then	
				CastSpellByName("Теневой удар")
			else
				ComboRogV1()
			end
		end
	end
end

function ComboRogueKnightV3()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local mana=UnitMana("player")
	local CoolDW=FFA_Cooldown(4,3)
	
	if ((bleed1 or bleed2 or bleed3) and wound) == true then
		if CoolDW == true then
			if mana>34 then
				CastSpellByName("Атака в рану")
			else
				ComboRogV2()
			end
		else
			if mana>64 then
				CastSpellByName("Подлый удар")
			else
				ComboRogV2()
			end
		end
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			if mana>29 then
				CastSpellByName("Подлый удар")
			else
				ComboRogV2()
			end
		else 
			if mana>19 then
				CastSpellByName("Теневой удар")
			else
				ComboRogV2()
			end
		end
	end
end

function ComboRogueWarrior()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local mana=UnitSkill("player")
	local CoolDW=FFA_Cooldown(4,3)
	
	if ((bleed1 or bleed2 or bleed3) and wound and CoolDW) == true then
		CastSpellByName("Атака в рану")
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			CastSpellByName("Подлый удар")
		else 
			if mana> 24 then
				CastSpellByName("Рубящий удар")
			else
				CastSpellByName("Теневой удар")
			end
		end
	end
end

function ComboRogueWarriorV1()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local mana=UnitMana("player")
	local CoolDW=FFA_Cooldown(4,3)
	
	if ((bleed1 or bleed2 or bleed3) and wound) == true then
		if CoolDW == true then
			if mana>34 then
				CastSpellByName("Атака в рану")
			else
				ComboRogWarV1()
			end
		else
			if mana>64 then
				CastSpellByName("Подлый удар")
			else
				ComboRogWarV1()
			end
		end
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			if mana>29 then
				CastSpellByName("Подлый удар")
			else
				ComboRogWarV1()
			end
		else 
			if mana>19 then
				CastSpellByName("Теневой удар")
			else
				ComboRogWarV1()
			end
		end
	end
end

function ComboRogueWarriorV2()
	local bleed1=FFA_SearchDebuff("target","Кровотечение")
	local bleed2=FFA_SearchDebuff("target","Кровотечение от удара в спину")
	local bleed3=FFA_SearchDebuff("target","Кровотечение от удара исподтишка")
	local wound=FFA_SearchDebuff("target","Тяжелое ранение")
	local mana=UnitMana("player")
	local CoolDW=FFA_Cooldown(4,3)
	
	if ((bleed1 or bleed2 or bleed3) and wound) == true then
		if CoolDW == true then
			if mana>34 then
				CastSpellByName("Атака в рану")
			else
				ComboRogWarV2()
			end
		else
			if mana>64 then
				CastSpellByName("Подлый удар")
			else
				ComboRogWarV2()
			end
		end
	else 
		if (bleed1 or bleed2 or bleed3) == true then
			if mana>29 then
				CastSpellByName("Подлый удар")
			else
				ComboRogWarV2()
			end
		else 
			if mana>19 then
				CastSpellByName("Теневой удар")
			else
				ComboRogWarV2()
			end
		end
	end
end

function ComboRogV1()
	if FFA_SkillReady("Разоружение") == false then
		CastSpellByName("Священный удар")
	else
		CastSpellByName("Разоружение")
	end
end

function ComboRogV2()
	if (FFA_SearchDebuff("target","Печать Света III") and FFA_SkillReady("Кара")) == true then
		CastSpellByName("Кара")
	else
		if FFA_SkillReady("Разоружение") == false then
			CastSpellByName("Священный удар")
		else
			CastSpellByName("Разоружение")
		end
	end
end

function ComboRogWarV1()
	local mana=UnitSkill("player")
	local CoolDW1=FFA_SkillReady("Прикосновение Смерти")
	local CoolDW2=FFA_SkillReady("Заражение ядом")
	
	if (CoolDW1 and mana> 14) == true then
		CastSpellByName("Прикосновение Смерти")
	else
		if (CoolDW2 and mana>19) == true then
			CastSpellByName("Заражение ядом")	
		else
			UseSkill(1,1)
		end
	end
end

function ComboRogWarV2()
	local mana=UnitSkill("player")
	local CoolDW1=FFA_SkillReady("Прикосновение Смерти")
	local CoolDW2=FFA_SkillReady("Заражение ядом")
	
	if (CoolDW1 and mana> 14) == true then
		CastSpellByName("Прикосновение Смерти")
	else
		if (CoolDW2 and mana>19) == true then
			CastSpellByName("Заражение ядом")	
		else
			if mana>24 then
				CastSpellByName("Рубящий удар")
			else
				UseSkill(1,1)
			end
		end
	end
end

function RogueShadowPrison()
	if FFA_SearchDebuff("target","Темница теней")==false then
		CastSpellByName("Темница теней")
	end
end






 