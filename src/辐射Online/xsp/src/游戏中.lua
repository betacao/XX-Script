-------------------游戏中-------------------

function 跳过过场动画1()
	while true do
		keepScreen(true);
		point = findColors({0, 0, 1600, 900},
			"0|0|0x1c857c,-14|23|0x000000,10|23|0x000000,0|42|0x1c696b",
			95, 0, 0, 0)
		if #point ~= 0 then
			sysLog("发现过场动画1，点击跳过");
			keepScreen(false);
			点击(1, point[1].x, point[1].y, 3 * 1000);
			break;
		else
			sysLog("没发现过场动画1，继续等待");
			mSleep(3 * 1000);
		end
		keepScreen(false);
	end
end

function 点击对话框中的确认按钮()
	sysLog("点击对话框中的确认按钮");
	点击(1, 1200, 760, 3 * 1000);
end

function 点击确认按钮直到出现建造的图标()
	while true do
		keepScreen(true);
		local point = findColors({0, 0, 1600, 900},
			"0|0|0x3e68b2,47|0|0x304598,-11|65|0x1a0f0f,60|57|0xffe0b1,5|122|0xffe8bd",
			95, 0, 0, 0)
		if #point ~= 0 then
			sysLog("发现建造任务，点击开始建造");
			keepScreen(false);
			点击(1, point[1].x, point[1].y, 3 * 1000);
			break;
		else
			sysLog("现在一直点击确认按钮");
			点击对话框中的确认按钮();
		end
		keepScreen(false);
	end
end

function 点击推荐的建造物()
	while true do
		keepScreen(true);
		local point = findColors({0, 0, 1599, 899},
			"0|0|0x304696,54|0|0x426caf,-13|-58|0xffe0ae,51|-66|0xfde4b4,38|-134|0xffce8a",
			95, 0, 0, 0)
		if #point ~= 0 then
			sysLog("发现推荐建造的小手，点击推荐建造");
			keepScreen(false);
			点击(1, point[1].x, point[1].y, 3 * 1000);
			点击对话框中的确认按钮();
			break;
		else
			sysLog("没有发现推荐建造的小手图标");
			mSleep(3 * 1000);
		end
		keepScreen(false);
	end
end

function 根据推荐位置开始建造()
	while true do
		keepScreen(true);
		local point = findColors({0, 0, 1599, 899},
			"0|0|0x7bf2f7,10|-112|0xffe6b4,-1|124|0x79f1f6",
			95, 0, 0, 0)
		if #point ~= 0 then
			sysLog("在推荐位置开始建造了");
			keepScreen(false);
			点击(1, point[1].x, point[1].y, 3 * 1000);
			break;
		else
			sysLog("没有发现推荐的建造位置");
			mSleep(3 * 1000);
		end
		keepScreen(false);
	end
end

function 点击免费()

end