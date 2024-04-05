
local tile_size = { x = 32  , y = 0 }

local upgrade_table = {
}

Number_of_surfaces = 0

commands.add_command("create-surfaces", "Create n surfaces, where syntax is /create-surfaces n", function(command)
  if command.parameter ~= nil then
    for iter = 0, tonumber(command.parameter), 1 do
      game.create_surface("upgradem-" .. tostring(iter + 1))
    end
    Number_of_surfaces = n
  end
  game.print(command.parameter)
  end
)

script.on_event(defines.events.on_built_entity,function(event)
  if event.item ~= nil then
    local old_entity = event.created_entity
    if old_entity.name == "assembling-machine-2" then
      if game.surfaces[1].find_non_colliding_position ("assembling-machine-3", {x = old_entity.position.x + tile_size.x, y = old_entity.position.y + tile_size.y}, 1, 1,true) ~= nil then
        local upgraded_assembler = game.surfaces[1].create_entity({
          name= "assembling-machine-3",
          position = {x = old_entity.position.x + tile_size.x, y = old_entity.position.y + tile_size.y},
          force = old_entity.force
        })
        end
      end
    end
  end
)

script.on_event(defines.events.on_pre_player_mined_item,
  function(event)
    game.print("hello mined event")
  end  
)

script.on_event(defines.events.on_robot_built_entity,
  function(event)
    game.print("hello robot event")
  end
)