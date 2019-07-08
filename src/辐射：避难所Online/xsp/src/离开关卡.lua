function 离开关卡(x, y)
	--点击离开关卡
	点击(1, x, y,  1 * 1000);
	--然后点击加速结算
	点击(1, x, y,  2 * 1000);
	--最后点击确定退出
	local width,height = getScreenSize();
	点击(1, height - 150, width - 50, 1 * 1000);
end