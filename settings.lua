data:extend {
  {
    name = "upgradem-tiling-x",
    setting_type = "runtime-global",
    type = "int-setting",
    default_value = 80,
    minimum_value = 1,
    maximum_value = 1000,
  },
  {
    name = "upgradem-tiling-y",
    setting_type = "runtime-global",
    type = "int-setting",
    default_value = 100,
    minimum_value = 1,
    maximum_value = 1000,
  },
  {
    name = "upgradem-tiling-style",
    setting_type = "runtime-global",
    type = "string-setting",
    default_value = "surfaces",
    allowed_values = {"surfaces", "left-to-right", "up-to-down"}
  }

}
