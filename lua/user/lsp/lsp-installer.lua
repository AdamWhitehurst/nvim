local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
	"solidity_ls",
	"rust_analyzer",
	"vuels",
	"volar",
	-- "solc",
	-- "solang",
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if server == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server == "pyright" then
		local pyright_opts = require("user.lsp.settings.pyright")
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

	if server == "solc" then
		local solc_opts = require("user.lsp.settings.solc")
		opts = vim.tbl_deep_extend("force", solc_opts, opts)
	end

	if server == "solang" then
		local solang_opts = require("user.lsp.settings.solang")
		opts = vim.tbl_deep_extend("force", solang_opts, opts)
	end

	if server == "solidity_ls" then
		local solidity_ls_opts = require("user.lsp.settings.solidity_ls")
		opts = vim.tbl_deep_extend("force", solidity_ls_opts, opts)
	end

	if server == "rust_analyzer" then
		local rust_analyzer_opts = require("user.lsp.settings.rust_analyzer")
		opts = vim.tbl_deep_extend("force", rust_analyzer_opts, opts)
	end

	lspconfig[server].setup(opts)
end

-- local solc_opts = require("user.lsp.settings.solc")
-- opts = vim.tbl_deep_extend("force", solc_opts, opts)
-- lspconfig.solc.setup(opts)
-- local rt = require("rust-tools")

-- rt.setup({
-- 	server = {
-- 		on_attach = function(_, bufnr)
-- 			-- Hover actions
-- 			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
-- 			-- Code action groups
-- 			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
-- 		end,
-- 	},
-- })
