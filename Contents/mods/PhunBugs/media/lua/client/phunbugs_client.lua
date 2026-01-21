if isServer() then
    return
end

Events.OnZombieUpdate.Add(function(zed)
    if not zed:isSkeleton() then
        zed:setSkeleton(true)
    end
end)
