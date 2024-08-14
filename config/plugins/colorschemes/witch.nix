{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "witch.nvim";
      version = "2024-02-05";
      src = pkgs.fetchFromGitHub {
        owner = "sontungexpt";
        repo = "witch";
        rev = "4360477c3cfcd2d254cd23b9adfc0b17feea8a94";
        hash = "sha256-OUbfrOsdD4ilXNwWwD0jXdPJHy5E6rVeM6+Ukr4rw8g=";
      };
    })
  ];
  extraConfigLua = ''
    require("witch").setup {}
  '';
}
