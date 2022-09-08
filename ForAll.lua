function PetCallRecall(NumPet)
	if IsPetSummoned(NumPet) then    
		ReturnPet(NumPet)
	else 
		SummonPet(NumPet)
	end
end


function Decahedral(var)
	local dice = math.random(10)
	local d10say={
	[1]="Нет, однозначно Нет";
	[2]="Нет";
	[3]="Почти Нет";
	[4]="Скорее всего Нет ";
	[5]="Ни Нет, ни Да";
	[6]="Ни Да, ни Нет";
	[7]="Скорее всего ДА";
	[8]="Почти Да";
	[9]="Да";
	[10]="Да, однозначно Да"}

	if var == 3 then
		SendChatMessage("d10: "..d10say[dice], "GUILD")
	else
		if var == 2 then
			SendChatMessage("d10: "..d10say[dice], "RAID")
		else
			if var == 1 then
				SendChatMessage("d10: "..d10say[dice], "SAY")
			else
				DEFAULT_CHAT_FRAME:AddMessage("d10: "..d10say[dice])
			end
		end
	end
end

--/script StoreBuyItem1000(15,100)
function StoreBuyItem1000(pos, count)
	local i = 0
	while i < 10 do
		StoreBuyItem(pos, count);
		i = i + 1
	end
end