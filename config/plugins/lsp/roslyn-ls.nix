{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "roslyn.nvim";
      version = "";
      src = pkgs.fetchFromGitHub {
        owner = "seblj";
        repo = "roslyn.nvim";
        rev = "e284f0e6c34b01cd1db9fdb71c75ae85d732a43b";
        hash = "sha256-gshStNKW2YjAXOg++qECaa9WPKmT7NOu8zA3uu30PTQ=";
      };
    })
  ];
  extraConfigLua = ''
    require("roslyn").setup({
    config = {
        -- Here you can pass in any options that that you would like to pass to `vim.lsp.start`
        -- The only options that I explicitly override are, which means won't have any effect of setting here are:
        --     - `name`
        --     - `cmd`
        --     - `root_dir`
        --     - `on_init`
    },
    exe = {
        "${pkgs.roslyn-ls}/bin/Microsoft.CodeAnalysis.LanguageServer"
    },
    -- NOTE: Set `filewatching` to false if you experience performance problems.
    -- Defaults to true, since turning it off is a hack.
    -- If you notice that the server is _super_ slow, it is probably because of file watching
    -- I noticed that neovim became super unresponsive on some large codebases, and that was because
    -- it schedules the file watching on the event loop.
    -- This issue went away by disabling that capability. However, roslyn will fallback to its own
    -- file watching, which can make the server super slow to initialize.
    -- Setting this option to false will indicate to the server that neovim will do the file watching.
    -- However, in `hacks.lua` I will also just don't start off any watchers, which seems to make the server
    -- a lot faster to initialize.
    filewatching = true,
    })
  '';
}
