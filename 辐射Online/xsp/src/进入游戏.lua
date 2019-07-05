function 点击确认按钮()
	sysLog("点击确认按钮");
	touchDown(1, 793, 726);
	mSleep(50);
	touchMove(1, 793, 726);
	mSleep(50);
	touchUp(1, 793, 726);
end

function 点击进入游戏()
	sysLog("点击进入游戏");
	touchDown(1, 1278, 524);
	mSleep(50);
	touchMove(1, 1278, 524);
	mSleep(50);
	touchUp(1, 1278, 524);
end

function 点击选服()
	sysLog("点击选服");
	touchDown(1, 1465, 440);
	mSleep(50);
	touchMove(1, 1465, 440);
	mSleep(50);
	touchUp(1, 1465, 440);
end

function 查找推荐服务器()
	sysLog("根据黄色小手图标进入推荐服务器");
	while true do
		keepScreen(true);
		point = findColors({0, 0, 1599, 899},
			"0|0|0xf7eb4e,23|4|0xf7eb4e,-9|27|0xf7eb4d,24|26|0xfaea4d,7|13|0x5577aa",
			95, 0, 0, 0)
		if #point ~= 0 then
			sysLog("找到了推荐的服务器，点击进入");
			break;
		else
			sysLog("没有推荐的服务器，下滑继续找");
			touchDown(1, 810, 550);
			for i = 0, 200, 20 do
				touchMove(1, 810, 550-i);
				mSleep(150);
			end
			touchUp(1, 810, 350);
		end
		keepScreen(false);
	end
end

function 点击创建角色()
	keepScreen(true);
	point = findColors({0, 0, 1600, 900},
		"0|0|0x353535,7|27|0x000000,0|36|0x000000",
		95, 0, 0, 1)
	if #point ~= 0 then
		sysLog("点击创建角色");
		touchDown(1, 1278, 524);
		mSleep(50);
		touchMove(1, 1278, 524);
		mSleep(50);
		touchUp(1, 1278, 524);
	else
		sysLog("不需要创建角色");
	end
	keepScreen(false);
end