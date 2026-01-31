return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			html = {
				filetypes = { "html", "templ", "htmldjango" },
				init_options = {
					configurationSection = { "html", "css", "javascript" },
					embeddedLanguages = {
						css = true,
						javascript = true,
					},
					userLanguages = {
						htmldjango = "html",
					},
					provideFormatter = true,
				},
			},
			omnisharp = {
				settings = {
					FormattingOptions = {
						EnableEditorConfigSupport = true,
					},
					RoslynExtensionsOptions = {
						-- Enables support for roslyn analyzers, code fixes and rulesets.
						EnableAnalyzersSupport = true,
					},
				},
			},
		},
	},
}
