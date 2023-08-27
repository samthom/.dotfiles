local status_ok, harpoon = pcall(require, "harpoon")
if not status_ok then
  return
end

require("telescope").load_extension("harpoon")

harpoon.setup({})
