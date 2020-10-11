RegisterCommand('vehicle', function(source, args)
    local car = GetHashKey(args)
    local playerSrc = PlayerPedId()
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(1)
        RequestModel(car)
    end
    local x, y, z = table.unpack(GetEntityCoords(())) 
    CreateVehicle(car, x, y + 2 , z + 0.25, GetEntityHeading(playerSrc()), true, false)
end)