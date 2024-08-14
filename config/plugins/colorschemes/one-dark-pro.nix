{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "onedarkpro.nvim";
      version = "";
      src = pkgs.fetchFromGitHub {
        owner = "olimorris";
        repo = "onedarkpro.nvim";
        rev = "c097acadb6c277be49a92e3d4bd185b2bb2b4d4c";
        hash = "sha256-b1A6XYeVkIuDt295lMQMeQ15Mkl2ud3VXBjNOB4wIWQ=";
      };
    })
  ];
  extraConfigLua = ''
    require("onedarkpro").setup {}
    vim.cmd "colorscheme onedark"
  '';
}
