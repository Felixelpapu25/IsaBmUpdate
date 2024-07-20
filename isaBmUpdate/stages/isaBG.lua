function onCreate()
    local path = "BackGrounds/W15/"
    if songName == "Classism" or songName == "RedEx" then
        makeAnimatedLuaSprite("bg", path.."isaHouse", 0, 0);
        addAnimationByPrefix("bg", "idle", "FireplaceBG0",24,true);
        addLuaSprite("bg",false);
    else
        makeLuaSprite("bg", path.."motherBG", -300, 0);
        setScrollFactor("bg", 0.8, 0.8)
        addLuaSprite("bg");
        makeLuaSprite("floor", path.."motherFG", -200, -820);
        scaleObject("floor", 1.5,1.5)
        addLuaSprite("floor")
        makeLuaSprite("plants", path.."plants", -300, 0)
        setScrollFactor("plants", 0.7, 0.7)
        addLuaSprite("plants",true)
        setProperty("health", 2)
    end
end
function color()
    if songName == "Classism" or songName == "RedEx" then
        setProperty("boyfriend.color", getColorFromHex("E48865"))
        setProperty("gf.color", getColorFromHex("E48865"))
        setProperty("dad.color", getColorFromHex("E48865"))
end
end
function onCreatePost()
    local reflejos = getPropertyFromClass("ClientPrefs", "shaders")
    if songName == "Classism" or songName == "RedEx" then 
color()
    else
        setProperty("camGame.zoom",0.6) 
    end
    if reflejos == true then
        addLuaScript("data/reflection")
    end
end
function onEvent(name,value1,value2)
    if name == "badapplelol" then
if value1 == "a" then
    setProperty("plants.color", getColorFromHex("000000"))
    setProperty("bfPhantom.visible", false)
    setProperty("gfPhantom.visible", false)
    setProperty("dadPhantom.visible", false)
elseif value1 == "b" then
    setProperty("plants.color", 12366999)
    setProperty("bfPhantom.visible", true)
    setProperty("gfPhantom.visible", true)
    setProperty("dadPhantom.visible", true)
end
    end
end