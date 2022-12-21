local turnvalue = 8

function onBeatHit()
turnvalue = 8
if curBeat % 2 == 0 then
turnvalue = -8
end

setProperty('iconP2.angle',-turnvalue)
setProperty('iconP1.angle',turnvalue)
doTweenAngle('iconTween1','iconP1',0,crochet/1000,'circIn')
doTweenAngle('iconTween2','iconP2',0,crochet/1000,'circIn')
end

function onCreatePost()
setObjectOrder('iconP1',getObjectOrder('iconP2'))
end