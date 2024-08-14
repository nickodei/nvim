{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "doom-one.nvim";
      version = "";
      src = pkgs.fetchFromGitHub {
        owner = "NTBBloodbath";
        repo = "doom-one.nvim";
        rev = "76595eec15896a5da7f4e39ceeded6ffb0f4dc38";
        hash = "sha256-wm95c8Mo1TXl39xr+4gTQzBvk8oXT2RTjon5IIpAKEc=";
      };
    })
  ];
  extraConfigLua = ''
    -- require("doom-one.nvim").setup{}
    vim.cmd "colorscheme doom-one"
  '';
}
