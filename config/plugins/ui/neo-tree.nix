{
  plugins.neo-tree = {
    enable = true;

    closeIfLastWindow = true;
    window = {
      width = 30;
      position = "current";
      autoExpandWidth = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = ":Neotree action=focus reveal toggle<CR>";
      options.silent = true;
    }
  ];
}
