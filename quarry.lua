while true do
local lenght = 8 -- lenghtx2==16
local unloaded = 0
local collected = 0
while lenght>0 do
    turtle.suck()
    print("info: ",lenght)
    -- Fuel check --
    print(turtle.getFuelLevel())
    if turtle.getFuelLevel() <= 100 then
        if turtle.getItemCount(16) <= 1 then
            print("Fuel level low!")
            print("Please add fuel to slot 16")
        end
    end
    turtle.select(16)
    turtle.refuel()
    -- Fuel check end --
	
	-- unload envanter --
	
-- local function unload( _bKeepOneFuelStack )
--	print( "Unloading items..." )
--	for n=1,15 do
--		local nCount = turtle.getItemCount(n)
--		if nCount > 0 then
--			turtle.select(n)			
--			local bDrop = true
--			if _bKeepOneFuelStack and turtle.refuel(0) then
--				bDrop = false
--				_bKeepOneFuelStack = false
--			end			
--			if bDrop then
--				turtle.drop()
--				unloaded = unloaded + nCount
--			end
--		end
--	end
--	collected = 0
--	turtle.select(1)
--end

	-- unload envanter end --
	
	-- check envanter --
--	if turtle.getItemCount(15) >= 1 then
--     unload(true)
--	end
	-- check envanter end --
	
    for move=1,15 do
        turtle.dig()
        turtle.forward()
    end
    for turn=1,1 do
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
    end
    for move=1,15 do
        turtle.dig()
        turtle.forward()
    end
    for move=1,1 do
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
    end
    lenght = lenght - 1
end
    turtle.turnRight()
    for i=1,16 do
        turtle.forward()
    end
    turtle.turnLeft()
    lenght = 8
    turtle.digDown()
    turtle.down()
end
    
