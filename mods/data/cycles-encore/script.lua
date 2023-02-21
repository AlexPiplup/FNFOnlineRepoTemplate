function onCreate()
    makeLuaSprite('BlackvignetteCycles','black_vignette',0,0)
    setObjectCamera('BlackvignetteCycles','hud')
    addLuaSprite('BlackvignetteCycles',true)

    makeLuaSprite('blackscreenCycles','',0,0)
    setObjectCamera('blackscreenCycles','hud')
    makeGraphic('blackscreenCycles',screenWidth,screenHeight,'000000')

    addLuaSprite('blackscreenCycles',false)
end
function onStepHit()
    if curStep == 128 then
        setProperty('blackscreenCycles.alpha',0.3)
    end
    if curStep == 1056 then
        setProperty('blackscreenCycles.alpha',1)
    end
    if curStep == 1072 then
        removeLuaSprite('blackscreenCycles',true)
    end
end
