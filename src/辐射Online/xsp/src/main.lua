-------------------我是main-------------------
require("游戏中通用事件检查");
require("开始游戏");
require("游戏中");

init("0", 1); --以当前应用 Home 键在右边初始化

isRunning = appIsRunning("com.shandagames.shelter.yeshen"); --检测辐射：避难所Online是否在运行
if isRunning == 0 then --如果没有运行
	sysLog("辐射：避难所Online不在运行");
	sysLog("正在启动");
	runApp("com.shandagames.shelter.yeshen") --运行辐射：避难所Online
	mSleep(10 * 1000);  --等待程序响应
else
	sysLog("辐射：避难所Online正在运行");
end

--开始游戏流程

--点击确认按钮();
--点击选服();
--查找推荐服务器();
--点击进入游戏();
--点击创建角色();



--游戏过程中

--跳过过场动画1();
--点击确认按钮直到出现建造的图标();
--点击推荐的建造物();
--根据推荐位置开始建造();
界面检查();
