{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      timeoutMs = 500;
      lspFallback = true;
    };
    formattersByFt = {
      lua = ["stylua"];
      nix = ["alejandra"];
    };
  };
}
