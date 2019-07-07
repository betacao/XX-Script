-------------------处理一些通用事件-------------------
function 点击(tag, x, y, sleep)
	touchDown(tag, x, y);
	mSleep(50);
	touchMove(tag, x, y);
	mSleep(50);
	touchUp(tag, x, y);
	mSleep(sleep);
end

--0: 向上
--1: 向下
--2: 向左
--3: 向右
function 移动(tag, x, y, maxStep, step, orientation)
	touchDown(tag, x, y);
	if orientation == 0 then
	elseif orientation == 1 then
		for i = 0, maxStep, step do
			touchMove(1, x, y-i);
			mSleep(150);
		end
		touchUp(1, x, y - maxStep);
	elseif orientation == 2 then
	else
	end
end