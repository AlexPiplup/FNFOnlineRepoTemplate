function fadeMiddleStrum(duration,easing,spin,opacity)
    if not middlescroll then
        for strumLine = 0,7 do
            if strumLine < 2 then
                noteTweenX('GTPStrum'..strumLine,strumLine,168 + (112 * strumLine),duration,easing)
            elseif strumLine >= 2 and strumLine < 4 then
                noteTweenX('GTPStrum'..strumLine,strumLine,664 + (112 * strumLine),duration,easing)
            elseif strumLine >= 4 then
                noteTweenX('GTPStrum'..strumLine,strumLine,92 + (112 * (strumLine - 1)),duration,easing)
            end
            if strumLine < 4 then
                noteTweenAlpha('WowTweenAlpha'..strumLine,strumLine,opacity,duration,'linear')
            end
            if spin == true then
                noteTweenAngle('wowTweenAngle'..strumLine,strumLine,360,duration,'quartOut')
            end
        end
    end
end
function middleStrum()
    if not middlescroll then
        for strumLine = 0,7 do
            if strumLine < 2 then
                setPropertyFromGroup('strumLineNotes',strumLine,'x',224 + (112 * strumLine))
            elseif strumLine >= 2 and strumLine < 4 then
                setPropertyFromGroup('strumLineNotes',strumLine,'x',620 + (112 * strumLine))
            elseif strumLine >= 4 then
                setPropertyFromGroup('strumLineNotes',strumLine,'x',92 + (112 * (strumLine - 1)))
            end
            if strumLine < 4 then
                setPropertyFromGroup('strumLineNotes',strumLine,'alpha',0.3)
            end
        end
    end
end
function onStepHit()
    if curStep == 1984 then
        fadeMiddleStrum(1,'quartOut',true,0.3)
    end
end
function onTweenCompleted(name)
    if string.find(name,'wowTweenAngle',0,true) ~= nil then
        for tweenLenght = 0,7 do
            if name == 'wowTweenAngle'..tweenLenght then
                setPropertyFromGroup('strumLineNotes',tweenLenght,'angle',0)
            end
        end
    end
end