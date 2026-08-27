local StarterGui = game:GetService("StarterGui")
local DiscordLink = "https://discord.gg/your_discord_invite_here"

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = function(buttonText)
    if buttonText == "Copy Discord" then
        if setclipboard then
            setclipboard(DiscordLink)
            StarterGui:SetCore("SendNotification", {
                Title = "KAIZST HUB EVADE",
                Text = "Đã sao chép link Discord vào bộ nhớ tạm!",
                Duration = 3
            })
        end
    end
end

StarterGui:SetCore("SendNotification", {
    Title = "KAIZST HUB EVADE",
    Text = "Đang tải script, vui lòng đợi 30 giây...",
    Icon = "rbxassetid://6023426926",
    Duration = 5
})

task.delay(2, function()
    StarterGui:SetCore("SendNotification", {
        Title = "Tham gia cộng đồng!",
        Text = "Tham gia Discord để cập nhật và hỗ trợ.",
        Icon = "rbxassetid://6023426926",
        Duration = 10,
        Button1 = "Copy Discord",
        Button2 = "Bỏ qua",
        Callback = Bindable
    })
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/MITTO-m4x/Hyper_M4X_EVA/refs/heads/main/Game/EVADE_NEO_AIL_IN_1.lua"))()
