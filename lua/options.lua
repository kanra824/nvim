local options = {
    -- エンコーディングをUTF-8に設定
    encoding = "utf-8",
    fileencoding = "utf-8",
    number = true, -- 行番号を表示
    list = true,
    title = true,

    -- インデント
    shiftwidth = 4, -- シフト幅を4に設定する
    tabstop = 4, -- タブ幅を4に設定する
    expandtab = true, -- タブ文字をスペースに置き換える
    autoindent = true, -- 自動インデントを有効にする
    smartindent = true, -- インデントをスマートに調整する

    -- 検索
    hlsearch = true, -- 検索時にハイライトを有効にする

    -- クリップボード
    clipboard = "unnamedplus",

    -- フォント
    guifont="Hack Nerd font",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
