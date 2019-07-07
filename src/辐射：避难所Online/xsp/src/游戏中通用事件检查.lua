-----------------对带有出现小手 免费 确认等操作进行一次点击----------------------
require("通用");

function 界面检查()
	--**************函数很重要****************
	keepScreen(true);
	
	--检查是否有确认按钮
	local point1 = findColors({0, 0, 1599, 899},
		"0|0|0x54b7a7,2|-66|0x224466,-3|63|0x55bbaa,5|-140|0xc2dbc2",
		95, 0, 0, 0)
	if #point1 ~= 0 then
		sysLog("发现了确认按钮，我要点击了")
		点击(1, point1[1].x, point1[1].y, 1 * 1000);
		return;
	end
	
	--检查是否出现向下小手
	local point2 = findColors({0, 0, 1599, 899},
		"0|0|0xffe1b2,3|-58|0x2d4698,-17|77|0xffe6bd",
		95, 0, 0, 0)
	if #point2 ~= 0 then
		sysLog("发现了向下小手，我要点击了")
		点击(1, point2[1].x, point2[1].y + 100, 1 * 1000);
		return;
	end
	
	--检查是否出现向上小手
	local point3 = findColors({0, 0, 1599, 899},
		"0|0|0xffe1b2,-3|65|0x3962b1,12|-69|0xffe9b7",
		95, 0, 0, 0)
	if #point3 ~= 0 then
		sysLog("发现了向上小手，我要点击了")
		点击(1, point3[1].x, point3[1].y - 100, 1 * 1000);
		return;
	end
	
	--检查是否出现免费
	local point4 = findColors({0, 0, 1599, 899},
		"0|0|0xffe1b2,-3|65|0x3962b1,12|-69|0xffe9b7",
		95, 0, 0, 0)
	if #point4 ~= 0 then
		sysLog("发现了免费，我要点击了")
		点击(1, point4[1].x, point4[1].y, 1 * 1000);
		return;
	end
	
	--检查是否发现过场动画
	local point5 = findColors({0, 0, 1600, 900},
		"0|0|0x1c857c,-14|23|0x000000,10|23|0x000000,0|42|0x1c696b",
		95, 0, 0, 0)
	if #point5 ~= 0 then
		sysLog("发现过场动画，我要点击了");
		点击(1, point5[1].x, point5[1].y, 1 * 1000);
		return;
	end
	
	local point6 = findColors({0, 0, 1599, 899},
		"0|0|0xf6f8f9,24|28|0xfefeff,82|26|0xfbfcfc,120|23|0xfafbfc",
		95, 0, 0, 0)
	if #point6 ~= 0 then
		sysLog("发现离开关卡，我要点击了");
		点击(1, point6[1].x, point6[1].y, 1 * 1000);
		return;
	end
	
	local point7 = findColors({0, 0, 1599, 899},
		"0|0|0xf9fbfb,-31|-1|0xdde6e7,-37|27|0xbacccf,14|27|0xb9cbce",
		95, 0, 0, 0)
	if #point7 ~= 0 then
		sysLog("发现离开关卡后的确定，我要点击了");
		点击(1, point7[1].x, point7[1].y, 1 * 1000);
		return;
	end
	
	sysLog("我什么都没发现，等待下一步操作");
	mSleep(3 * 1000);
	keepScreen(false);
	
end