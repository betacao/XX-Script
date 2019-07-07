-------------------处理一些通用事件-------------------
function 点击(tag, x, y, sleep)
	touchDown(tag, x, y);
	mSleep(50);
	touchMove(tag, x, y);
	mSleep(50);
	touchUp(tag, x, y);
	mSleep(sleep);
end
