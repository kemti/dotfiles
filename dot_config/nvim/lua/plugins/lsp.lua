return {
    {
      "neovim/nvim-lspconfig",
      opts = {
        -- make sure mason installs the server
        servers = {
          yamlls = {
            settings = {
              yaml = {
                schemas = require("schemastore").yaml.schemas({
                  extra = {
                    {
                      description = "SCL AST schema",
                      fileMatch = "*.sclast.yml",
                      name = "schema-sclast.yml",
                      url = "D:/dev/scl-ls/crates/scl-ast/schema-sclast.yml", -- or '/path/to/your/schema.json'
                    },
                  },
                }),
                customTags = {
                    "!Node mapping",
                    "!Token mapping",
                },
              },
            },
          },
        },
      },
    },
  }  