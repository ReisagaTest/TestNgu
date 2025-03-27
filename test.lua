local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")


if getgenv().Team == "Marines" then
    ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
elseif getgenv().Team == "Pirates" then
    ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
end

repeat
    task.wait(1)
    local chooseTeam = playerGui:FindFirstChild("ChooseTeam", true)
    local uiController = playerGui:FindFirstChild("UIController", true)

    if chooseTeam and chooseTeam.Visible and uiController then
        for _, v in pairs(getgc(true)) do
            if type(v) == "function" and getfenv(v).script == uiController then
                local constant = getconstants(v)
                pcall(function()
                    if (constant[1] == "Pirates" or constant[1] == "Marines") and #constant == 1 then
                        if constant[1] == getgenv().Team then
                            v(getgenv().Team)
                        end
                    end
                end)
            end
        end
    end
until player.Team
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EffectContainer = ReplicatedStorage:FindFirstChild("Effect") and ReplicatedStorage.Effect:FindFirstChild("Container")
if EffectContainer then
    local Death = EffectContainer:FindFirstChild("Death")
    if Death then
        local success, result = pcall(require, Death)
        if success and type(result) == "function" then
            hookfunction(result, function() end)
        end
    end
    local Respawn = EffectContainer:FindFirstChild("Respawn")
    if Respawn then
        local success, result = pcall(require, Respawn)
        if success and type(result) == "function" then
            hookfunction(result, function() end)
        end
    end
end
local GuideModule = ReplicatedStorage:FindFirstChild("GuideModule")
if GuideModule then
    local success, module = pcall(require, GuideModule)
    if success and module and type(module.ChangeDisplayedNPC) == "function" then
        hookfunction(module.ChangeDisplayedNPC, function() end)
    end
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Util = ReplicatedStorage:WaitForChild("Util", 5)
if Util then
    local CameraShaker = Util:FindFirstChild("CameraShaker")
    if CameraShaker then
        require(CameraShaker):Stop()
    end
end
local placeId = game.PlaceId
local worldMap = {
    [2753915549] = true,
    [4442272183] = true,
    [7449423635] = true
}
if worldMap[placeId] then
    if placeId == 2753915549 then
        World1 = true
    elseif placeId == 4442272183 then
        World2 = true
    elseif placeId == 7449423635 then
        World3 = true
    end
else
    game.Players.LocalPlayer:Kick("Unsupported Game")
end
repeat
    wait()
until game.Players.LocalPlayer.Character
function dist(position)
    return selff:DistanceFromCharacter(position);
end;function Tp2(xyz)
    if FindFirstChild(selff.Character, "HumanoidRootPart") then
        selff.Character.HumanoidRootPart.CFrame = xyz;
    end;
end;function Tp(a, b, c, speedoftpNTP, obj)
    KLLOP = selff.Character.HumanoidRootPart;
    pKLLOP = KLLOP.Position;
    cpKLLOP = Vec3(pKLLOP.x, pKLLOP.y, pKLLOP.z);
    tpKLOOP, sdKLOOp, saveAlKLOOP, svetarKLLOP = nil
    if typeof(a) == "number" then
        tpKLOOP = Vec3(a, b, c); sdKLOOp = speedoftpNTP;
        saveAlKLOOP = CF(a, b, c);
        svetarKLLOP = CF(a, b, c);
    elseif typeof(a) == "CFrame" then
        tpKLOOP = a.Position; sdKLOOp = b;
        saveAlKLOOP = a
        svetarKLLOP = a
    end;
    typeofValidInstances = nil;
    if typeof(c) == "Instance" then
        FollowValidInstances = true;
        typeofValidInstances = c;
    else
        if typeof(obj) == "Instance" then
            FollowValidInstances = true;
            typeofValidInstances = obj;
        else
            FollowValidInstances = false;
        end;
    end;
    dtnKLOOP = (tpKLOOP - cpKLLOP).Unit;
    dceKLLOP = (tpKLOOP - cpKLLOP).Magnitude;
    ssKLLOP = mfloor(dceKLLOP / sdKLOOp);
    if not FindFirstChild(selff.Character, "Humanoid") then
        repeat twait(1); until FindFirstChild(selff.Character, "Humanoid") and FindFirstChild(selff.Character, "HumanoidRootPart") twait(1);
        KLLOP = selff.Character.HumanoidRootPart
        pKLLOP = KLLOP.Position;
    end;
    if FindFirstChild(selff.Character, "Humanoid") and selff.Character.Humanoid.Health <= 0 then
        repeat twait(1); until FindFirstChild(selff.Character, "Humanoid") and FindFirstChild(selff.Character, "HumanoidRootPart") and selff.Character.Humanoid.Health > 0 twait(1);
        KLLOP = selff.Character.HumanoidRootPart
        pKLLOP = KLLOP.Position;
    end;
    if not FollowValidInstances then
        for i = 1, ssKLLOP do
            if Configs.System.BREAKALLTHISSHITHAHAHAHAHA then break; end;
            if dist(saveAlKLOOP.Position) <= 50 then Tp2(svetarKLLOP); break; end;
            cpKLLOP = cpKLLOP + dtnKLOOP * sdKLOOp;
            selff.Character.HumanoidRootPart.CFrame = CF(cpKLLOP);
            twait();
        end;
    else
        pcal(function()
            for i = 1, ssKLLOP do
                tpKLOOP = typeofValidInstances.Position;
                dtnKLOOP = (tpKLOOP - cpKLLOP).Unit;
                dceKLLOP = (tpKLOOP - cpKLLOP).Magnitude;
                ssKLLOP = mfloor(dceKLLOP / sdKLOOp);
                cpKLLOP = cpKLLOP + dtnKLOOP * sdKLOOp;
                if Configs.System.BREAKALLTHISSHITHAHAHAHAHA then break; end;
                if dist(typeofValidInstances.Position) <= 50 then Tp2(tpKLOOP); break; end;
                selff.Character.HumanoidRootPart.CFrame = CF(cpKLLOP);
                twait();
            end;
        end);
    end;
end;function TpBypass(a)
    if Configs.Teleport.TP_Bypass then
        if typeof(a) == "CFrame" and selc then
            SetPrimaryPartCFrame(selc, a)
            wait();
            selc.Humanoid.Health = 0;
            repeat twait() until selc and selc.Humanoid
            SetPrimaryPartCFrame(selc, a)
            SetPrimaryPartCFrame(selc, a)
            SetPrimaryPartCFrame(selc, a)
        end;
    end; wait(0.7)
    repeat twait(1); until FindFirstChild(selff.Character, "Humanoid") and selff.Character.Humanoid.Health > 0
end;function tpwithseat(xyz,speedoftpNTP)
    guyejrigrjerhjfcnwhfwefji = selff.Character.HumanoidRootPart;
    reuifrefiremfvuhuevr = guyejrigrjerhjfcnwhfwefji.Position;
    HHAHDAWUDnenfsfewuhfefwfowife = Vec3(reuifrefiremfvuhuevr.x, reuifrefiremfvuhuevr.y, reuifrefiremfvuhuevr.z);
    SDFGHJKWDuewuewfjewjfuew = xyz.Position;

    HDNwajdiir3jiwisjdjifew = (SDFGHJKWDuewuewfjewjfuew - HHAHDAWUDnenfsfewuhfefwfowife).Unit;
    wjjdjiwjidwjiwejiewifjwijweifoj = (SDFGHJKWDuewuewfjewjfuew - HHAHDAWUDnenfsfewuhfefwfowife).Magnitude;
    ajakdapujupyjlyljyujyupjpuy = mfloor(wjjdjiwjidwjiwejiewifjwijweifoj / speedoftpNTP);
    if not FindFirstChild(selff.Character, "Humanoid") then
        repeat twait(1.867); until FindFirstChild(selff.Character, "Humanoid")
    end;
    for i = 1, ajakdapujupyjlyljyujyupjpuy do
        if Configs.System.BREAKALLTHISSHITHAHAHAHAHA then break; end;
        HHAHDAWUDnenfsfewuhfefwfowife = HHAHDAWUDnenfsfewuhfefwfowife + HDNwajdiir3jiwisjdjifew * speedoftpNTP;
        selff.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(CF(HHAHDAWUDnenfsfewuhfefwfowife));
        twait();
    end;
end;function BP()
    Configs.System.Backpack = Backpack:GetChildren();
    return Backpack:GetChildren();
end;function SetHum(obj)
    obj.HumanoidRootPart.CanCollide = false; obj.Humanoid.WalkSpeed = 0; obj.Head.CanCollide = false;
    obj.HumanoidRootPart.CanQuery = false;
    if Configs.Settings.AutoFarm.Hitbox then
        obj.HumanoidRootPart.Size = Vec3(64, 64, 64);
    end;
    if FindFirstChild(obj, "Humanoid") then
        obj.Humanoid.WalkSpeed = 0;
        if FindFirstChild(obj.Humanoid, "Animator") then
            obj.Humanoid.Animator:Destroy();
        end;
    end;
    if FindFirstChild(obj, "Busy") then
        obj.Busy.Value = true;
    end;
    if FindFirstChild(obj, "Stun") then
        obj.Stun.Value = 1;
    end;
end;

spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().AutoDarkbeard
            then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                local bodyClip = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
                if bodyClip then
                    bodyClip:Destroy()
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().AutoDarkbeard
            then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

local player = game.Players.LocalPlayer
local function IsEntityAlive(entity)
    if not entity then return false end
    local humanoid = entity:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end
local function GetEnemiesInRange(character, range)
    local enemies = game:GetService("Workspace").Enemies:GetChildren()
    local players = game:GetService("Players"):GetPlayers()
    local targets = {}
    local playerPos = character:GetPivot().Position
    for _, enemy in ipairs(enemies) do
        local rootPart = enemy:FindFirstChild("HumanoidRootPart")
        if rootPart and IsEntityAlive(enemy) then
            local distance = (rootPart.Position - playerPos).Magnitude
            if distance <= range then
                table.insert(targets, enemy)
            end
        end
    end
    for _, otherPlayer in ipairs(players) do
        if otherPlayer ~= player and otherPlayer.Character then
            local rootPart = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
            if rootPart and IsEntityAlive(otherPlayer.Character) then
                local distance = (rootPart.Position - playerPos).Magnitude
                if distance <= range then
                    table.insert(targets, otherPlayer.Character)
                end
            end
        end
    end
    return targets
end
function AttackNoCoolDown()
    local character = player.Character
    if not character then return end
    local equippedWeapon
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local enemiesInRange = GetEnemiesInRange(character, 60)
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        for _, enemy in ipairs(enemiesInRange) do
            local rootPart = enemy:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local direction = (rootPart.Position - character:GetPivot().Position).Unit
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
                attackCount = attackCount + 1
            end
        end
    else
        local targets, mainTarget = {}, nil
        for _, enemy in ipairs(enemiesInRange) do
            if not enemy:GetAttribute("IsBoat") then
                local head = enemy:FindFirstChild("Head")
                if head then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if mainTarget then
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            pcall(function()
                attackEvent:FireServer(0.1)
                hitEvent:FireServer(mainTarget, targets)
            end)
        end
    end
end

local lastHakiTime = 0
local hakiCooldown = 1
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        local currentTime = tick()
        if currentTime - lastHakiTime >= hakiCooldown then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            lastHakiTime = currentTime
        end
    end
end
local lastUnEquipTime = 0
local unEquipCooldown = 0.5
function UnEquipWeapon(Weapon)
    local currentTime = tick()
    if currentTime - lastUnEquipTime >= unEquipCooldown then
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            getgenv().NotAutoEquip = true
            game.Players.LocalPlayer.Character[Weapon].Parent = game.Players.LocalPlayer.Backpack
            getgenv().NotAutoEquip = false
        end
        lastUnEquipTime = currentTime
    end
end
local lastEquipTime = 0
local equipCooldown = 0.5
function EquipWeapon(ToolSe)
    local currentTime = tick()
    if currentTime - lastEquipTime >= equipCooldown then        
        if not getgenv().NotAutoEquip then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            if tool then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        end
        lastEquipTime = currentTime
    end
end

local win_lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reisaga/Ui-Library/refs/heads/main/lamoui.lua'))()

local main_frame = win_lib.win_create({
    top = "Test Hop",
    btm = "Status: Farming"
})

local FastAttackTask
local function FastAttackLoop()
    while getgenv().FastAttack do
        if type(AttackNoCoolDown) == "function" then
            AttackNoCoolDown()
        end
        task.wait(0.1)
    end
end

getgenv().FastAttack = Value
    if Value and not FastAttackTask then
        FastAttackTask = task.spawn(FastAttackLoop)
    end
    if not Value and FastAttackTask then
        FastAttackTask = nil
    end

getgenv().SelectWeapon = "Melee"
    task.spawn(function()
        local lastWeapon = nil
        while task.wait(0.5) do
            pcall(function()
                if getgenv().SelectWeapon == lastWeapon then
                    return
                end
                lastWeapon = getgenv().SelectWeapon
                local weaponFound = nil
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == getgenv().SelectWeapon then
                        weaponFound = v.Name
                        break
                    end
                end
                if weaponFound then
                    getgenv().SelectWeapon = weaponFound
                end
            end)
        end
    end)

getgenv().AutoTurnOnV4 = true
    task.spawn(function()
        local lastCheckTime = 0
        while true do
            task.wait(0.1)
            if getgenv().AutoTurnOnV4 then
                local currentTime = tick()
                if currentTime - lastCheckTime >= 0.5 then
                    lastCheckTime = currentTime
                    local character = game.Players.LocalPlayer.Character
                    if character and character:FindFirstChild("RaceEnergy") and
                       character.RaceEnergy.Value >= 1 and
                       not character.RaceTransformed.Value then
                        local be = game:GetService("VirtualInputManager")
                        be:SendKeyEvent(true, "Y", false, game)
                        task.wait(0.1)
                        be:SendKeyEvent(false, "Y", false, game)
                    end
                end
            end
        end
    end)

getgenv().AutoDarkBeard = true
spawn(function()
    while wait() do
        if getgenv().AutoDarkBeard then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies;
                if enemies:FindFirstChild("Darkbeard") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if ((v.Name == "Darkbeard") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                            repeat
                                task.wait();
                                AutoHaki();
                                EquipWeapon(getgenv().SelectWeapon);
                                AttackNoCoolDown();
                                v.HumanoidRootPart.CanCollide = false;
                                v.Humanoid.WalkSpeed = 0;
                                Tp(v.HumanoidRootPart.CFrame * Pos);
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
                            until not _G.RipFull or not v.Parent or (v.Humanoid.Health <= 0) 
                        end
                    end
                else
                    local Darkbeard = game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard");
                    if Darkbeard then
                        Tp(Darkbeard.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7));
                    else
                    main_frame.status_update("Status: Start Hop")
                        wait(1);
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Reisaga/ShinichiiHub/refs/heads/main/darkbeard.lua"))();
                    end
                end
            end);
        end
    end
end);   