function 战斗中()
	--战斗结束或未开始战斗，进行移动点击
	keepScreen(true);
	
	--检查是否发现离开关卡后的确定
	local point1 = findColors({0, 0, 1599, 899},
		"0|0|0x2a2a26,-43|-35|0x272723,-50|-85|0x2d2d26,-49|-127|0x2c2c26,-1|-153|0x000000",
		95, 0, 0, 0)
	if #point1 ~= 0 then
		sysLog("发现门在右面，向右移动");
		点击(1, point1[1].x + 200, point1[1].y, 1 * 1000);
	end
	
	mSleep(1 * 1000);
	
end