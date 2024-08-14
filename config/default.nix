{
  # Import all your configuration modules here
  imports = [
    ./auto-commands.nix
    ./clipboards.nix
    ./keymapping.nix
    ./options.nix

    # Plugins
    ./plugins/treesitter.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/lsp-format.nix
    ./plugins/lsp/trouble.nix
    ./plugins/lsp/lspkind.nix
    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp-lines.nix
    # ./plugins/lsp/lsp-saga.nix

    ./plugins/completion/cmp.nix

    ./plugins/snippets/luasnip.nix

    ./plugins/git/lazygit.nix

    ./plugins/ui/telescope.nix
    ./plugins/ui/neo-tree.nix
    ./plugins/ui/startup.nix

    ./plugins/utils/which-key.nix
    ./plugins/utils/comment.nix
    ./plugins/utils/autopairs.nix
    ./plugins/utils/indent-blackline.nix
    ./plugins/utils/obsidian.nix

    # ./plugins/colorschemes/witch.nix
    #./plugins/colorschemes/vscode.nix
    #./plugins/colorschemes/flow.nix
    # ./plugins/colorschemes/doom-one.nix
    ./plugins/colorschemes/one-dark-pro.nix

    ./plugins/statusline/lualine.nix
    ./plugins/statusline/barbecue.nix
    # ./plugins/statusline/staline.nix
  ];
}
