ads = Ads.new("vungle")
local test

if application:getDeviceInfo() == "Android" then
	ads:setKey("com.jenots.mashballs")
elseif application:getDeviceInfo() == "iOS" then
	ads:setKey("52976a8d6829a7000a00000b")
end

ads:showAd("video")
--ads:showAd("v4vc")

ads:addEventListener(Event.AD_DISPLAYED, function()
	print("ads AD_DISPLAYED")

end)

ads:addEventListener(Event.AD_RECEIVED, function()
	print("ads AD_RECEIVED")
end)

ads:addEventListener(Event.AD_FAILED, function(e)
	print("ads AD_FAILED", e.error)
end)

ads:addEventListener(Event.AD_ACTION_BEGIN, function()
	print("ads AD_ACTION_BEGIN")
end)

ads:addEventListener(Event.AD_ACTION_END, function()
	print("ads AD_ACTION_END")
end)

ads:addEventListener(Event.AD_DISMISSED, function()
	print("ads AD_DISMISSED")
end)

ads:addEventListener(Event.AD_ERROR, function(e)
	print("ads AD_ERROR", e.error)
end)

local function onVideo(btn, event)
	if btn:hitTestPoint(event.x, event.y)then
		ads:showAd("video")
	end
end
local function onV4VC(btn, event)
	if btn:hitTestPoint(event.x, event.y) then
		ads:showAd("v4vc")
	end
end
video = TextField.new(nil, "VIDEO")
video:addEventListener(Event.MOUSE_DOWN, onVideo, video)
video:setScale(5, 5)
video:setPosition(10, 200)
stage:addChild(video)
v4vc = TextField.new(nil, "V4VC")
v4vc:addEventListener(Event.MOUSE_DOWN, onV4VC, v4vc)

v4vc:setScale(5, 5)
v4vc:setPosition(100, 100)
stage:addChild(v4vc)