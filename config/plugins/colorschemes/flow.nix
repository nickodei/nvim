{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "flow.nvim";
      version = "";
      src = pkgs.fetchFromGitHub {
        owner = "0xstepit";
        repo = "flow.nvim";
        rev = "3af4d4d1b8a99c34e060de6fdaa5babc596a50c1";
        hash = "sha256-9/bAKR2n/AQOvp0wwgmL75pzE6V4yKupSAP6/rLnH/E=";
      };
    })
  ];
  extraConfigLua = ''
    require("flow").setup{}
    vim.cmd "colorscheme flow"
  '';
}
