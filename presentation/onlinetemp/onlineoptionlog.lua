-- onlineoptionlog.lua
local OnlineOptionLog = {}

function OnlineOptionLog:Init()
    self.logFile = io.open("online_option_log.txt", "a")  -- Open log file in append mode
    if not self.logFile then
        print("Failed to open log file.")
    end
end

function OnlineOptionLog:Log(message)
    if self.logFile then
        local timestamp = os.date("%Y-%m-%d %H:%M:%S")
        self.logFile:write(string.format("[%s] %s\n", timestamp, message))
        self.logFile:flush()  -- Ensure the message is written immediately
    end
end

function OnlineOptionLog:Close()
    if self.logFile then
        self.logFile:close()
    end
end

return OnlineOptionLog
