local status_ok, dap_go = pcall(require, "dap-go")
-- Failback if the package is not available
if not status_ok then
	return
end

dap_go.setup()
