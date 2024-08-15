{
  plugins.toggleterm.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>t";
      action = ":ToggleTerm<CR>";
      options.silent = true;
    }
  ];
}
