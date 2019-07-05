require("进入游戏");

init("0", 1); --以当前应用 Home 键在右边初始化

---------------------打开APP------------------
--toast("开启辐射：避难所Online，请等待3秒");
--sysLog("开启辐射：避难所Online，请等待3秒")
--mSleep(3 * 1000);

--r = runApp("com.shandagames.shelter.huawei");
--mSleep(20 * 1000);  --等待程序响应
--if r == 0 then
--	sysLog("应用启动成功 \n 恭喜你啊");
--	toast("应用启动成功 \n 恭喜你啊");
--else
--	sysLog("启动应用失败 \n 垃圾人品");
--	toast("启动应用失败 \n 垃圾人品");
--end
flag = appIsRunning("com.shandagames.shelter.huawei")
if flag == 0 then
	sysLog("辐射：避难所Online 不在运行");
	return;
end

sysLog("辐射：避难所Online 正在运行");

点击确认按钮();
mSleep(3 * 1000);
点击选服();
mSleep(1 * 1000);
查找推荐服务器();
mSleep(1 * 1000);
--点击进入游戏();
--mSleep(1 * 1000);
--点击创建角色();


