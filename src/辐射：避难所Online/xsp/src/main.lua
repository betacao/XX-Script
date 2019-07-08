-------------------我是main-------------------

local bb = require("badboy")
bb.loadutilslib();
require("开始游戏");
require("玩游戏");
require("休息中");
require("战斗中");
require("离开关卡")
require("通用")


init("0", 1); --以当前应用 Home 键在右边初始化
appid = "com.shandagames.shelter.yeshen";

function 检查状态()
	isRunning = appIsRunning(appid); --检测辐射：避难所Online是否在运行
	if isRunning == 0 then --如果没有运行
		sysLog("辐射：避难所Online不在运行");
		sysLog("正在启动");
		runApp(appid) --运行辐射：避难所Online
		mSleep(10 * 1000);  --等待程序响应
	else
		sysLog("辐射：避难所Online正在运行");
		--如果程序在后台，要调用起来
		local isfront = isFrontApp(appid); --更新前台状态
		if isfront ~= 1 then
			sysLog("辐射：避难所Online不在前台运行 现在重新打开");
			closeApp(appid)
			mSleep(3 * 1000);  --等待程序响应
			runApp(appid) --运行辐射：避难所Online
			mSleep(10 * 1000);  --等待程序响应
		end
	end
end

检查状态();

--开始游戏流程

--点击确认按钮();
--点击选服();
--查找推荐服务器();
--点击进入游戏();
--点击创建角色();

--游戏过程中

玩游戏();

