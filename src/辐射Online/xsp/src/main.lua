require("开始游戏");

screen.init(screen.LANDSCAPE_RIGHT);
local size = screen.getSize()
-- 假定当前设备分辨率为1280x1920, 输出: 'size = Size[1280 x 1920]'
printf('size = %s', size)

flag = runtime.isAppRunning("com.shandagames.shelter.huawei")
if flag == 0 then
	sysLog("辐射：避难所Online 不在运行");
	return;
end

sysLog("辐射：避难所Online 正在运行");

--点击确认按钮();
--mSleep(3 * 1000);
--点击选服();
--mSleep(1 * 1000);
--查找推荐服务器();
--mSleep(1 * 1000);


