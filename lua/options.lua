local options = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    number = true, -- 行番号を表示
    list = true,
    title = true,
    mouse = "a",
    writebackup = false,
    updatetime = 100,
    autoread = true,
    hidden = true,

    -- インデント
    shiftwidth = 4, -- シフト幅を4に設定する
    tabstop = 4, -- タブ幅を4に設定する
    expandtab = true, -- タブ文字をスペースに置き換える
    autoindent = true, -- 自動インデントを有効にする
    smartindent = true, -- インデントをスマートに調整する

    -- 検索
    hlsearch = true, -- 検索時にハイライトを有効にする

    -- フォント
    guifont="Hack Nerd font",

    -- no backup
    swapfile = false, -- swapファイルを保存しない
    undofile = false, -- undoファイルを保存しない
    backup = false, -- backupを保存しない
    writebackup = false, --writebackupを保存しない
    viminfo = "", -- viminfoファイルに保存しない

    termguicolors = true, -- terminal color
    pumblend = 1,
    winblend = 1,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
