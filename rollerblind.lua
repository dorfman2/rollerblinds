--rollerblind.lua
local module = {}
--local tmr_delay = 2

function module.up()
  print("UP Command recieved!")
  if (state == 2 and step_stepsleft == 0) then -- i am down, go up
    print("Blinds are going up.")
    percent_go_to(0,config.step_ms)
    state = 0
  end
end

function module.down()
  print("DOWN Command recieved!")
  if (state == 0 and step_stepsleft == 0) then -- i am up, go dowm
    print("Blinds are going down.")
    percent_go_to(100,config.step_ms)
    state = 2
  end
end

function module.stop()
  print("STOP Command recieved!")
  if (state == 1) then
    print("Blinds are stopping.")
    step.stop()
    state = 0
  end
end

return module
