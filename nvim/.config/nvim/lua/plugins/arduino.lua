local status_ok, arduino = pcall(require, "arduino")
if not status_ok then
    return
end

arduino.setup {
    default_fqbn = "arduino:renesas_uno:unor4wifi",
}

require "lspconfig"["arduino_language_server"].setup {
    on_new_config = arduino.on_new_config,
}

vim.api.nvim_create_autocmd('User', {
    pattern = 'ArduinoFqbnReset',
    callback = function()
        vim.cmd('LspRestart')
    end
})
