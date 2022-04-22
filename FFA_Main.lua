function FFA_SearchBuff(target,buffName)
	local i=1
	while UnitBuff(target,i)~=nil do
		if UnitBuff(target,i)==buffName then 
			return true
		end
		i=i+1
	end
	return false
end

function FFA_SearchBuffTime(target,buffName)
	local i = 1;
	while UnitBuff(target,i)~=nil do
		if UnitBuff(target,i)== buffName then
			return UnitBuffLeftTime(target,i)
		end
		i = i + 1
	end
	return 0
end

function FFA_SearchDebuff(target,debuffName)
	local i = 1;
	while(UnitDebuff(target,i) ~= nil)do
		if(UnitDebuff(target,i) == debuffName) then
			return true
		end
		i = i + 1
	end
	return false
end

function FFA_SearchDebuffById(target, debufId)
	local i = 1;
	while(UnitDebuff(target,i) ~= nil)  do
		local name, icon, count, ID = UnitDebuff( "target", i)
		if (ID == debufId) then 
			-- SendChatMessage("Some Text3", "PARTY")
			return true
		end
		i = i + 1
	end
	return false
end

function FFA_SearchBuffById(target, bufId)
	local i = 1;
	while(UnitBuff(target,i) ~= nil)  do
		local name, icon, count, ID = UnitBuff( "target", i)
		if (ID == bufId) then 
			return true
		end
		i = i + 1
	end
	return false
end


function FFA_SearchDebuffTime(target,buffName)
	local i = 1;
	while UnitDebuff(target,i)~=nil do
		local Name = UnitDebuff(target, i)		
		if Name == buffName then
			return UnitDebuffLeftTime(target,i)
		end
		i = i + 1
	end
	return 0
end

function FFA_SearchDebuffTimeById(target,buffId)
	local i = 1;
	while UnitDebuff(target,i)~=nil do
		local name, icon, count, ID = UnitDebuff( "target", i)
		if ID == buffId then
			return UnitDebuffLeftTime(target,i)
		end
		i = i + 1
	end
	-- SendChatMessage("Some Text2" .. buffId, "PARTY")
	return 0
end

function FFA_getSuitSkillIndex(skillName, className) 

	local warriorSkillCount, scoutSkillCount, rogueSkillCount, mageSkillCount, priestSkillCount,
	knightSkillCount, wardenSkillCount, druidSkillCount, commonSkillCount = SetSuitSkill_List();

	local length, jobIndex;
	
	if className == 'warrior' then 
		length = warriorSkillCount
		jobIndex = 1
	end 
		
	if (className == 'scout') then 
		length = scoutSkillCount
		jobIndex = 2
	end

	if (className == 'rogue') then 
		length = scoutSkillCount
		jobIndex = 3
	end

	if (className == 'mage') then 
		length = mageSkillCount
		jobIndex = 4
	end

	if (className == 'priest') then 
		length = priestSkillCount
		jobIndex = 5
	end

	if (className == 'knight') then 
		length = knightSkillCount
		jobIndex = 6
	end

	if (className == 'warden') then 
		length = wardenSkillCount
		jobIndex = 7
	end

	if (className == 'druid') then 
		length = druidSkillCount
		jobIndex = 8
	end

	if (className == 'common') then 
		length = commonSkillCount
		jobIndex = 9
	end

	-- DEFAULT_CHAT_FRAME:AddMessage(length)

	for i = 0, length do
		local name, texture, index  =  GetSuitSkill_List(jobIndex, i);
		if (name ==  skillName) then 
			return index;
		end
	end

	return false; 
end

function FFA_Cooldown(a1,a2)
	local cooldown, remaining = GetSkillCooldown(a1,a2)
	if remaining <=  0.4 then
		return true
	else
		return false 
	end		
end

function FFA_Cooldown_time(tab,number)
	local duration, remaining = GetSkillCooldown(tab,number)

	return remaining;
end

function FFA_SuitSkillReady(index)
	local name, texture, cooldown1, cooldown2 = SkillPlateUpdate(index);
	return cooldown2 < 0.1;
end

function FFA_SkillReady(skillName)
	for tab = 2, 4 do
		local totalCount = GetNumSkill(tab);
		if totalCount then
			for number = 1, totalCount do
				local name, rank, iconPath, mode, skillLV, point, totalPoint, energyType, learned = GetSkillDetail(tab,number);
				if name == skillName then
					local duration, remaining = GetSkillCooldown(tab,number);
					if remaining < 1 then
						return true
					else
						return false
					end
				end
			end
		end
	end
end

function FFA_buffStack(buffName, target) 
	local i = 1;
	while UnitBuff(target,i)~=nil do
		if UnitBuff(target,i) == buffName then
			local name, icon, count = UnitBuff(target,i)
			return count;
		end
		i = i + 1
	end
	return 0
end


function FFA_debuffStack(buffName, target) 
	local i = 1;
	while UnitDebuff(target,i)~=nil do
		if UnitDebuff(target,i) == buffName then
			local name, icon, count = UnitDebuff(target,i)
			return count;
		end
		i = i + 1
	end
	return 0
end


