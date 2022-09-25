local function on_atbach(client, bufnr)
	local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	-- keymaps for lsp
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set("n", "<leader><c-]>", function ()
		vim.cmd("vsp")
		vim.lsp.buf.definition()
	end, { buffer = 0 })
	vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set("i", "<c-h>", vim.lsp.buf.signature_help, { buffer = 0 })
	vim.keymap.set("n", "<leader>vo", ":LspRestart<cr>", { noremap = true })

	-- telescope_mapper("gr", "lsp_references", nil, true)
	-- telescope_mapper("<leader>pv", "find_symbol", nil, true)
	-- telescope_mapper("<leader>pd", "lsp_document_symbols", nil, true)

	vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

	-- Attach any filetype specific options to the client
	-- filetype_attach[filetype](client,bufnr)
end

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
	local opts = {}

	if server.name == "emmet_ls" then
		opts.filetypes = {"html", "css", "blade"}
	end

	opts.on_attach = on_attach

	server:setup(opts)
	vim.cmd [[ do User LspAttachBuffers ]]
end)
