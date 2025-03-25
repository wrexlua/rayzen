-- rayzen init
-- todo: add more functions for security and undetect
-- dont modify this really and dont skid only for educational purposes

local _require = require -- secure require

local executor = {
    nm = "rayzen",
    vrs = "1.0"
}

if script.Name ~= "LuaSocialLibrariesDeps" and script.Name ~= "JestGlobals" and script.Name ~= "Url" then -- secure lua
script.Parent = nil; -- if roblox detected exploit then deattach for no ban
end

task.spawn(function(...) 
repeat wait() until game:IsLoaded()
        local proxiedServices = {
		LinkingService = {{
			"OpenUrl"
		}, game:GetService("LinkingService")},
		ScriptContext = {{
			"SaveScriptProfilingData", 
			"AddCoreScriptLocal",
			"ScriptProfilerService"
		}, game:GetService("ScriptContext")},
		--[[
		MessageBusService = {{
			"Call",
			"GetLast",
			"GetMessageId",
			"GetProtocolMethodRequestMessageId",
			"GetProtocolMethodResponseMessageId",
			"MakeRequest",
			"Publish",
			"PublishProtocolMethodRequest",
			"PublishProtocolMethodResponse",
			"Subscribe",
			"SubscribeToProtocolMethodRequest",
			"SubscribeToProtocolMethodResponse"
		}, game:GetService("MessageBusService")},
		GuiService = {{
			"OpenBrowserWindow",
			"OpenNativeOverlay"
		}, game:GetService("GuiService")},
		MarketplaceService = {{
			"GetRobuxBalance",
			"PerformPurchase",
			"PerformPurchaseV2",
		}, game:GetService("MarketplaceService")},
		HttpRbxApiService = {{
			"GetAsyncFullUrl",
			"PostAsyncFullUrl",
			"GetAsync",
			"PostAsync",
			"RequestAsync"
		}, game:GetService("HttpRbxApiService")},
		CoreGui = {{
			"TakeScreenshot",
			"ToggleRecording"
		}, game:GetService("CoreGui")},
		Players = {{
			"ReportAbuse",
			"ReportAbuseV3"
		}, game:GetService("Players")},
		HttpService = {{
			"RequestInternal"
		}, game:GetService("HttpService")},
		BrowserService = {{
			"ExecuteJavaScript",
			"OpenBrowserWindow",
			"ReturnToJavaScript",
			"OpenUrl",
			"SendCommand",
			"OpenNativeOverlay"
		}, game:GetService("BrowserService")},
		CaptureService = {{
			"DeleteCapture"
		}, game:GetService("CaptureService")},
		OmniRecommendationsService = {{
			"MakeRequest"
		}, game:GetService("OmniRecommendationsService")},
		OpenCloudService = {{
			"HttpRequestAsync"
		}, game:GetService("OpenCloudService")}
		]]
	}

        local HttpService = game:GetService("HttpService")
	
	local rs = game:GetService("RunService")
	local players = game:GetService("Players")

	local twait = task.wait

-- create a storage folder inside of game->CoreGui which will hold our modulescripts we will later edit them on in the c part
local cloned_folder = game.CoreGui.RobloxGui.Common.Modules -- roblox patched so we cant manually create a modulescript it has to be cloned and needs to already exist so we just clone anything inside of the module we edit anyways it makes sense so yaa

local module_scripts = {}
for _, child in ipairs(cloned_folder:GetChildren()) do
    if child:IsA("ModuleScript") then -- we dont need to do a specific module we can just do whatever we find in the modulescript
        table.insert(module_scripts, child) -- insert it into a table 
    end
end

local function load(source, chunk) -- allows secure httpservice
    local chunk = chunk or nil -- if you dont know..

    -- create a new folder for ldsrc
    local srcs = Instance.new("Folder")
    srcs.Parent = game.CoreGui
    srcs.Name = "RAYZEN-CS"

    -- create a new package for src
    local ldsrc = Instance.new("LocalScript")
    ldsrc.Name = source
    ldsrc.Parent = srcs
end

load("UmF5emVuU2VjdXJpdHlTZXJ2aWNl", "srv") -- create a service/package for undetectedable rayzen (rayzen security service)
load("rzJoxnysUhLDS", "srv") -- create a service/package for init (rayzen init service)

if #module_scripts > 0 then -- this will always be above one unless you intentionally did something to the exploit (eg such as deleting the modulescripts from the cloned_folder path)
    local random_index = math.random(1, #module_scripts)
    local random_module = module_scripts[random_index]:Clone()
    random_module.Name = "nHDYICoQjw" -- doing a dummy random string we can do a backene that randomizes the string in luau and the cpp prat can read it its a bit hard but possible
    
    local junk = Instance.new("Folder") -- make a new folder that will hold our scripts 
    junk.Parent = game.CoreGui
    junk.Name = "RAYZEN"

    
    random_module.Parent = junk
    random_module:Destroy() -- once we dont need them we delete them instantly however in some cases spamming can cause an issue i todo fix this later on however it should work fine
else -- if a bug then
    game.Players.LocalPlayer:Kick("Please contact with Team Rayzen. (Error: 446)")
    while true do end
end
-- Misc UNCs

-- identifyexec
function identifyexecutor()
return executor.nm, executor.vrs -- returns with executor name and version
end

getexecutorname = identifyexecutor -- creating function (makes identifyexecutor job)
getgenv().identifyexecutor = identifyexecutor -- configuring function
getgenv().getexecutorname = identifyexecutor -- configuring function
-- identify end
