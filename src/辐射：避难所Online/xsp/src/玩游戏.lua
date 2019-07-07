
function 玩游戏()
	while true do
		--如果发现右上角的绿色逃跑小人
		--则说明在战斗中
		--否则在休息中
		point = findColors({0, 0, 1599, 899},
			"0|0|0x11ec11,0|-57|0x10e810,-42|-45|0x102d10,-43|-3|0x005300,-62|-24|0x11ff14",
			95, 0, 0, 0)
		if #point ~= 0 then
		sysLog("战斗中")
		else
		sysLog("休息中")
			休息中();
		end
	end
end