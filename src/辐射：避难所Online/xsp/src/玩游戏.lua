
function 玩游戏()
	while true do
		--如果发现右上角的绿色逃跑小人
		--则说明在战斗中
		--否则在休息中
		keepScreen(true);
		local point = findColors({0, 0, 1599, 899},
			"0|0|0x11ec11,0|-57|0x10e810,-42|-45|0x102d10,-43|-3|0x005300,-62|-24|0x11ff14",
			95, 0, 0, 0)
		if #point ~= 0 then
			keepScreen(false);
			战斗中();
		else
			point = findColors({0, 0, 1599, 899},
				"0|0|0x55b5aa,-90|-56|0xeff5b5,69|-55|0xf1f2af,95|-308|0xe9c065,-75|-417|0x4779b3",
				95, 0, 0, 0)
			if #point ~= 0 then
				keepScreen(false);
				离开关卡(point[1].x, point[1].y)
			else
				keepScreen(false);
				休息中();
			end
		end
	end
end