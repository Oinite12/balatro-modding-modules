local mod_path = nil
local mod_id = nil

-- Retrives localization present in the directory localization/<lang>\
-- and appends it to <loc_table>.
---@param loc_table table
---@param lang string
---@return nil
local function locsplit(loc_table, lang)
	local loc_folder = ("localization/%s/"):format(lang)
	local loc_path = mod_path .. loc_folder
	local loc_sections = {"descriptions", "misc"}

	for _,section in ipairs(loc_sections) do
		loc_table[section] = loc_table[section] or {}
		local files = NFS.getDirectoryItems(loc_path .. section)
		local folder = loc_folder .. section
		for __,file_name in ipairs(files) do
			local subsection_name = file_name:gsub(".lua", "")
			local loc_func, err = SMODS.load_file(folder .. "/" .. file_name, mod_id)
			if err then error(err) end

			if loc_func then
				local subloc_table = loc_func()
				loc_table[section][subsection_name] = subloc_table
			end
		end
	end
end

-- Put function on global scope to use it anywhere
-- global_function = generate_uibox_definition
