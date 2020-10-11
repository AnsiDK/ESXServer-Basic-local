RegisterCommand('discord', function()
    TriggerEvent('chat:addMessage', {
        color = {255,0,0},
        multiline = true,
        args = {'[SERVER]', 'Join vores discord: https://discord.gg/EP5KJc'}
    })
end)