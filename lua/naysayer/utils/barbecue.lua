return function(flavour)
	local C = require("naysayer.palettes").get_palette(flavour)
	local O = require("naysayer").options

	local transparent_bg = O.transparent_background and C.none or C.darkest_green

	local dirname_color = O.integrations.barbecue.dim_dirname and C.light_green or C.brown
	local basename_bold = O.integrations.barbecue.bold_basename
	local context_color = O.integrations.barbecue.dim_context and C.light_green or C.brown
	local background_color = O.integrations.barbecue.alt_background and transparent_bg or C.none

	local M = {
		normal = { fg = C.brown, bg = background_color },

		ellipsis = { fg = C.light_green },
		separator = { fg = C.light_green },
		modified = { fg = C.monokai_orange },

		dirname = { fg = dirname_color },
		basename = { fg = C.brown, bold = basename_bold },
		context = { fg = context_color },

		-- Same keys as navic
		context_file = { fg = C.monokai_blue },
		context_module = { fg = C.monokai_blue },
		context_namespace = { fg = C.monokai_blue },
		context_package = { fg = C.monokai_blue },
		context_class = { fg = C.monokai_yellow },
		context_method = { fg = C.monokai_blue },
		context_property = { fg = C.green },
		context_field = { fg = C.green },
		context_constructor = { fg = C.monokai_blue },
		context_enum = { fg = C.green },
		context_interface = { fg = C.monokai_yellow },
		context_function = { fg = C.monokai_blue },
		context_variable = { fg = C.monokai_yellow },
		context_constant = { fg = C.monokai_orange },
		context_string = { fg = C.green },
		context_number = { fg = C.monokai_orange },
		context_boolean = { fg = C.monokai_orange },
		context_array = { fg = C.monokai_blue },
		context_object = { fg = C.monokai_blue },
		context_key = { fg = C.monokai_yellow },
		context_null = { fg = C.monokai_orange },
		context_enum_member = { fg = C.monokai_red },
		context_struct = { fg = C.monokai_blue },
		context_event = { fg = C.monokai_blue },
		context_operator = { fg = C.monokai_blue },
		context_type_parameter = { fg = C.monokai_blue },
	}

	return M
end
