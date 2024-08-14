{
  plugins.telescope = {
    enable = true;

    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
      };
    };

    extensions = {
      fzf-native = {
        enable = true;
      };
    };

    keymaps = {
      "<leader><space>" = {
        action = "buffers";
        options = {
          desc = "[ ] Find existing buffers";
        };
      };
      "<leader>sf" = {
        action = "find_files";
        options = {
          desc = "[S]erach [F]iles";
        };
      };
      "<leader>sg" = {
        action = "live_grep";
        options = {
          desc = "[S]earch by [G]rep";
        };
      };
      "<leader>sd" = {
        action = "diagnostics";
        options = {
          desc = "[S]earch [D]iagnostics";
        };
      };
      "<leader>?" = {
        action = "oldfiles";
        options = {
          desc = "[?] Find recently opened files";
        };
      };
    };
  };
}
