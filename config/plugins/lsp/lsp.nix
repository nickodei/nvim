{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        lua-ls = {
          enable = true;
        };
        nil-ls = {
          enable = true;
        };
        clangd = {
          enable = true;
        };
        cmake.enable = true;
        tsserver = {
          enable = true;
        };
        eslint.enable = true;
        html.enable = true;
        graphql.enable = true;
        cssls.enable = true;
        dockerls.enable = true;
        docker-compose-language-service.enable = true;
        vuels = {
          enable = true;
        };
        csharp-ls = {
          enable = true;
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "Code Action";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
}
