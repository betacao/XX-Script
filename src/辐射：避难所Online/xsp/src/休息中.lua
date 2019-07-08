-----------------对带有出现小手 免费 确认等操作进行一次点击----------------------

function 休息中()
	--**************函数很重要****************
	keepScreen(true);
	local width,height = getScreenSize();
	
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
		"0|0|0x10ff14,-49|-8|0x11fb11,-59|8|0xb8c300,-43|-30|0x18d917,-31|6|0xeffd00",
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
	
	--检查是否发现歪斜小手，一般要进行拖动操作
	local point6 = findColors({0, 0, 1599, 899},
		"0|0|0xffe8b9,67|85|0x416ab2,32|113|0x2d4496,55|56|0xffe2b2,15|90|0xffdbae",
		95, 0, 0, 0)
	if #point6 ~= 0 then
		sysLog("发现歪斜小手，我要准备拖动了");
		按住和松开的拖动();
		return;
	end
	
	--检查是否发现推荐任务
	local point7 = findColors({0, 0, 1599, 899},
		"0|0|0xfc6345,-34|42|0xb7d2d4,-73|71|0x455d67",
		95, 0, 0, 0)
	if #point7 ~= 0 then
		sysLog("发现了推荐任务 我要点击了");
		点击(1, point7[1].x - 20, point7[1].y + 20, 1 * 1000);
		return;
	end
	
	--检查是否有已完成任务点击领取奖励
	local point8 = findColors({0, 0, 1599, 899},
		"0|0|0x1b931a,-348|-368|0x22dd33,-340|-353|0x28c128,-369|-334|0x006c27",
		95, 0, 0, 0)
	if #point8 ~= 0 then
		sysLog("发现了已完成的任务 我要点击了");
		点击(1, point8[1].x, point8[1].y, 1 * 1000);
		return;
	end
	
	--检查是否有任务需要完成 点击去完成
	local point9 = findColors({0, 0, 1599, 899},
		"0|0|0x21e778,81|-30|0x21e77b,80|31|0x20e878,-190|3|0x1eea73,-42|-3|0x082a19",
		95, 0, 0, 0)
	if #point9 ~= 0 then
		sysLog("发现新的任务需要完成 点击去完成");
		点击(1, point9[1].x, point9[1].y, 1 * 1000);
		return;
	end
	
	--检查是否有小人要加入团队
	local point10 = findColors({0, 0, 1599, 899},
		"0|0|0x08fa08,-12|46|0x08fa08,5|47|0x08fa08,-47|43|0x205353",
		95, 0, 0, 0)
	if #point10 ~= 0 then
		sysLog("发现有小人要加入团队");
		点击(1, point10[1].x - 100, point10[1].y, 1 * 1000);
		return;
	end
	
	--检查是否建筑需要升级
	local point11 = findColors({0, 0, 1599, 899},
		"0|0|0x14fd15,-19|-6|0x14fd15,15|-7|0x14fd15,34|-27|0x586e76,-35|39|0x455d67",
		95, 0, 0, 0)
	if #point11 ~= 0 then
		sysLog("发现建筑升级 点击升级");
		点击(1, point11[1].x, point11[1].y, 1 * 1000);
		--直接点击升级 不需要查找
		点击(1, height / 2, width - 160, 1 * 1000);
		return;
	end
	
	sysLog("我什么都没发现，屏幕中心随意点击下");
	
	点击(1, height / 2, width / 2, 1 * 1000);
	keepScreen(false);
	
end

function 按住和松开的拖动()
	keepScreen(false);
	local position = {};
	while #position ~= 4 do
		keepScreen(true);
		--要找到不同位置的两个绿框框
		local point = findColors({0, 0, 1599, 899},
			"0|0|0x01ff00,81|3|0x01ff00,28|52|0x00fd00",
			95, 0, 0, 0)
		if #point ~= 0 then
			--发现绿框框
			if #position == 0 then
				sysLog("发现绿框框1");
				position[1] = point[1].x - 20;
				position[2] = point[1].y + 50;
			else
				sysLog("发现绿框框2");
				position[3] = point[1].x - 20;
				position[4] = point[1].y + 50;
			end
		end
		keepScreen(false);
		mSleep(0.5 * 1000);
	end
	keepScreen(true);
	sysLogFmt("position 最终的位置是 %s, %s, %s, %s", position[1], position[2], position[3], position[4]);
	swip(position[1], position[2], position[3], position[4], 1 * 1000);
	swip(position[3], position[4], position[1], position[2], 1 * 1000);
	mSleep(3 * 1000)
	
end