print("================================")
print("   ARTEMIS SERVER v0.24")
print("   Artemis Private Server")
print("================================")

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", function(Context)

    local PC = Context:get()

    if not PC then
        return
    end

    local PlayerState = PC.PlayerState

    if not PlayerState then
        return
    end

    print("[ARTEMIS] =============================")
    print("[ARTEMIS] PLAYER CONNECTED")

    local okName, name = pcall(function()
        return PlayerState:GetPlayerName()
    end)

    if okName and name then
        local okString, playerName = pcall(function()
            return name:ToString()
        end)

        if okString then
            print("[ARTEMIS] PlayerName = " .. tostring(playerName))
        end
    end

    local okUID, uniqueId = pcall(function()
        return PlayerState.UniqueId
    end)

    if not okUID or not uniqueId then
        print("[ARTEMIS] UniqueId unavailable")
        return
    end

    print("[ARTEMIS] ===== UNIQUE NET ID =====")
    print("[ARTEMIS] Type = " .. type(uniqueId))
    print("[ARTEMIS] Value = " .. tostring(uniqueId))

    local okFull, fullName = pcall(function()
        return uniqueId:GetFullName()
    end)

    if okFull then
        print("[ARTEMIS] FullName = " .. tostring(fullName))
    end

    local okClass, class = pcall(function()
        return uniqueId:GetClass()
    end)

    if okClass then
        print("[ARTEMIS] Class = " .. tostring(class))
    end

    local okValid, valid = pcall(function()
        return uniqueId:IsValid()
    end)

    if okValid then
        print("[ARTEMIS] IsValid = " .. tostring(valid))
    end

    print("[ARTEMIS] ===== METATABLE =====")

    local okMeta, meta = pcall(function()
        return getmetatable(uniqueId)
    end)

    if okMeta and meta then
        print("[ARTEMIS] Metatable = " .. tostring(meta))

        local okIndex, index = pcall(function()
            return meta.__index
        end)

        if okIndex then
            print("[ARTEMIS] __index = " .. tostring(index))
        end
    else
        print("[ARTEMIS] No metatable accessible")
    end

    print("[ARTEMIS] =============================")

end)

print("[ARTEMIS] Hook ready!")