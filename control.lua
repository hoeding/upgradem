
local tile_size = { x = 32  , y = 0 }
script.on_event(defines.events.on_built_entity,
  function(event)

    if event.item ~= nil then
      local old_entity = event.created_entity

      
      if old_entity.name == "assembling-machine-2" then
        if game.surfaces[1].find_non_colliding_position ("assembling-machine-3", {x = old_entity.position.x + tile_size.x, y = old_entity.position.y + tile_size.y}, 1, 1,true) 
        ~= nil then
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

  end  
)




script.on_event(defines.events.on_robot_built_entity,
  function(event)
    game.print("hello robot event")
  end
)