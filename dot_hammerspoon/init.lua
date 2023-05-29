-- Key bindings for specific applications
local appKeys = {
  {'cmd', '1', 'kitty'},
  {'cmd', '2', 'Microsoft Edge'},
  {'cmd', '3', 'Rider'},
  {'cmd', '4', 'Google Chrome'},
  -- Add more applications here...
}

-- Function to activate an app
function ActivateApp(appName)
  local app = hs.application.find(appName)
  if not app then
    hs.application.launchOrFocus(appName)
  else
    app:activate()
  end
end

-- Bind hotkeys
for i, app in ipairs(appKeys) do
  hs.hotkey.bind(app[1], app[2], function() ActivateApp(app[3]) end)
end

-- Key bindings for specific commands
cmdKeys = {
  {'cmd', 'f', '~/.hammerspoon/cmdScripts/run_lf.sh'},
  {'cmd', 't', '~/.hammerspoon/cmdScripts/run_thokr.sh'},
  {'cmd', '`', '~/.hammerspoon/cmdScripts/run_qe.sh'},
  -- Add more commands here...
}

-- Function to run a command
function RunCmd(command)
  hs.execute(command, true)
end

-- Bind hotkeys
for i, cmd in ipairs(cmdKeys) do
  hs.hotkey.bind(cmd[1], cmd[2], function() RunCmd(cmd[3]) end)
end
