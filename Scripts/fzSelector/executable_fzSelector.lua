
-- Path to the input file containing config file paths
local input_file = ".configPaths"

-- Function to read config file paths from the input file
local function read_config_paths()
    local file = io.open(input_file, "r")
    local config_paths = {}
    if file then
        for line in file:lines() do
            for path in line:gmatch("[^,]+") do
                table.insert(config_paths, path:match("^%s*(.-)%s*$"))
            end
        end
        file:close()
    end
    return config_paths
end

-- Function to open the selected config file
local function open_config_file()
    -- Read config file paths from the input file
    local config_paths = read_config_paths()

    -- Execute fzf to filter and select a file
    local fzf_command = "echo \"" .. table.concat(config_paths, "\n") .. "\" | fzf"
    local selected_path = io.popen(fzf_command):read("*l")

    -- Open the file in a text editor (NeoVim)
    os.execute("nvim " .. selected_path)
end

-- Entry point
open_config_file()
-- Function to read config file paths from the input file
local function read_config_paths()
    local file = io.open(input_file, "r")
    local config_paths = {}
    if file then
        for line in file:lines() do
            for path in line:gmatch("[^,]+") do
                table.insert(config_paths, path:match("^%s*(.-)%s*$"))
            end
        end
        file:close()
    end
    return config_paths
end

