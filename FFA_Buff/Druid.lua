function DruidWarriorBuff()
	if FFA_SearchBuffTime("player","������� �����������������") < 60 then
		CastSpellByName("������� �����������������")
	else
		if FFA_SearchBuffTime("player","���� �����") < 60 then
			CastSpellByName("���� �����")
		end
	end
end

function DruidRogueBuff()
	if FFA_SearchBuffTime("player","������� �����������������") < 60 then
		CastSpellByName("������� �����������������")
	else
		if FFA_SearchBuffTime("player","�������� �����") < 60 then
			CastSpellByName("�������� �����")
		end
	end
end

function DruidWardenBuff()
	if FFA_SearchBuffTime("player","������� �����������������") < 60 then
		CastSpellByName("������� �����������������")
	else
		if FFA_SearchBuffTime("player","������� ���") < 60 then
			CastSpellByName("������� ���")
		else
			if FFA_SearchBuffTime("player","������������ �������") < 60 then
				CastSpellByName("������������ �������")
			else
				if FFA_SearchBuffTime("player","��������������� ����") < 60 then
					CastSpellByName("��������������� ����")
				end
			end
		end
	end
end
