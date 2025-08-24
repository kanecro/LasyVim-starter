-- lua/plugins/chezmoi.lua
return {
  -- chezmoi.vim プラグイン本体
  "Lilja/chezmoi.vim",

  -- lazy = false にすることで、Neovim起動時に常に利用可能にします
  lazy = false,

  -- config関数内でキーマップを設定します
  config = function()
    local keymap = vim.keymap
    local opts = { desc = "Chezmoi" } -- キーマップの説明

    -- <leader>ca で `chezmoi apply` を実行
    -- 設定ファイルを編集した後、このコマンドで即座にシステムへ反映できます
    keymap.set("n", "<leader>ca", "<cmd>Chezmoi apply<CR>", { desc = "Chezmoi Apply" })

    -- <leader>ce で `chezmoi edit` を実行
    -- Neovimの中から ~/.zshrc など、他のdotfileを安全に編集開始できます
    keymap.set("n", "<leader>ce", "<cmd>Chezmoi edit<CR>", { desc = "Chezmoi Edit" })

    -- <leader>cu で `chezmoi update` を実行
    -- 他のマシンで変更したdotfilesをpullして適用します
    keymap.set("n", "<leader>cu", "<cmd>Chezmoi update<CR>", { desc = "Chezmoi Update" })

    -- <leader>cd で `chezmoi diff` を実行
    -- 現在のdotfilesとソースディレクトリの差分を確認できます
    keymap.set("n", "<leader>cd", "<cmd>Chezmoi diff<CR>", { desc = "Chezmoi Diff" })
  end,
}
