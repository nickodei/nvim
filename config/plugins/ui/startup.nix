{
  plugins.startup = {
    enable = true;

    colors = {
      background = "#ffffff";
      foldedSection = "#ffffff";
    };

    sections = {
      header = {
        type = "text";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Header";
        margin = 5;
        content = [
          " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗"
          " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║"
          " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║"
          " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║"
          " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║"
          " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
        ];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      body = {
        type = "mapping";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Menu";
        margin = 5;
        content = [
          [
            " File Browser"
            "Neotree action=focus reveal toggle"
            "fe"
          ]
          [
            " Find File"
            "Telescope find_files"
            "ff"
          ]
          [
            " Recent Files"
            "Telescope oldfiles"
            "fg"
          ]
        ];
        highlight = "String";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      locations = {
        type = "mapping";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Locations";
        margin = 5;
        content = [
          [
            " NixOS"
            "Neotree ~/nixos"
            "co"
          ]
          [
            " Neovim"
            "Neotree ~/projects/nvim"
            "cn"
          ]
          [
            "󰧑 SecondBrain"
            "Neotree ~/notes"
            "cb"
          ]
        ];
        highlight = "String";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };

    options = {
      paddings = [1 3 3];
    };

    parts = [
      "header"
      "body"
      "locations"
    ];
  };
}
