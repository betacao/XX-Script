-------------------开始游戏前的准备操作-------------------
require("通用")

function 点击确认按钮()
	--flag
	--0: 一直没找到
	--1: 找到了，并且点击了，但是不保证一定生效了
	local flag = 0;
	while true do
		keepScreen(true);
		x, y = findColor({0, 0, 1600, 900},
			"0|0|0xe5eeb3,101|29|0xeafdf8,133|25|0xeafdf8,218|-5|0xf3f4b1,225|57|0xebf1af,0|60|0xdef0b5",
			95, 0, 0, 0)
		if x > -1 then
			sysLog("找到确认按钮，点击确认按钮");
			flag = 1;
			点击(1, 793, 726, 3 * 1000);
		else
			if flag == 1 then
				sysLog("保证点击了确认按钮，开始下步操作");
				keepScreen(false);
				mSleep(3 * 1000);
				break;
			else
				sysLog("没有找到确认按钮，继续等待");
				mSleep(3 * 1000);
			end
		end
		keepScreen(false);
	end
end

function 点击选服()
	sysLog("点击选服");
	点击(1, 1465, 440, 1 * 1000);
end

function 查找推荐服务器()
	sysLog("根据黄色小手图标进入推荐服务器");
	while true do
		keepScreen(true);
		local point = findColors({0, 0, 1599, 899},
			"0|0|0xf7eb4e,23|4|0xf7eb4e,-9|27|0xf7eb4d,24|26|0xfaea4d,7|13|0x5577aa",
			95, 0, 0, 0)
		if #point ~= 0 then
			sysLog("找到了推荐的服务器，点击进入");
			keepScreen(false);
			点击(1, point[1].x - 100, point[1].y + 20, 3 * 1000);
			break;
		else
			sysLog("没有推荐的服务器，下滑继续找");
			移动(1, 810, 550, 200, 20, 1);
			mSleep(1 * 1000);
		end
		keepScreen(false);
	end
end

function 点击进入游戏()
	sysLog("点击进入游戏");
	点击(1, 1278, 524, 3 * 1000);
end

function 点击创建角色()
	keepScreen(true);
	local point = findColors({0, 0, 1600, 900},
		"0|0|0x353535,7|27|0x000000,0|36|0x000000",
		95, 0, 0, 1)
	if #point ~= 0 then
		sysLog("点击创建角色");
		点击(1, 1278, 524, 3 * 1000);
	else
		sysLog("不需要创建角色");
		mSleep(3 * 1000);
	end
		sysLog("进入游戏啦，恭喜哦！！！！！！！！！！！！");
	keepScreen(false);
end