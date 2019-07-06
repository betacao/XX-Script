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
		点击(1, point1[1].x, point1[1].y, 3 * 1000);
		return;
	end
	
	--检查是否出现向下小手
	local point2 = findColors({0, 0, 1599, 899},
		"0|0|0xffe1b2,3|-58|0x2d4698,-17|77|0xffe6bd",
		95, 0, 0, 0)
	if #point2 ~= 0 then
		sysLog("发现了向下小手，我要点击了")
		点击(1, point1[1].x, point1[1].y, 3 * 1000);
		return;
	end
	
	--检查是否出现向上小手
	local point3 = findColors({0, 0, 1599, 899},
		"0|0|0xffe1b2,-3|65|0x3962b1,12|-69|0xffe9b7",
		95, 0, 0, 0)
	if #point3 ~= 0 then
		sysLog("发现了向上小手，我要点击了")
		点击(1, point3[1].x, point3[1].y, 3 * 1000);
		return;
	end
	
	--检查是否出现免费
	local point4 = findColors({0, 0, 1599, 899},
		"0|0|0xffe1b2,-3|65|0x3962b1,12|-69|0xffe9b7",
		95, 0, 0, 0)
	if #point4 ~= 0 then
		sysLog("发现了免费，我要点击了")
		点击(1, point4[1].x, point4[1].y, 3 * 1000);
		return;
	end
	
	--检查是否发现过场动画
	local point = findColors({0, 0, 1600, 900},
			"0|0|0x1c857c,-14|23|0x000000,10|23|0x000000,0|42|0x1c696b",
			95, 0, 0, 0)
		if #point ~= 0 then
			sysLog("发现过场动画，我要点击了");
			点击(1, point[1].x, point[1].y, 3 * 1000);
			break;
		end
	
	keepScreen(false);
	
end