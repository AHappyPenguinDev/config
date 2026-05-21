-- Setup our JDTLS server any time we open up a java file
vim.cmd [[
    augroup jdtls_lsp
        autocmd!
        autocmd FileType java lua require'config.jdtls'.setup_jdtls() 
        autocmd FileType java lua print("Hey the autocmd is running!")
    augroup end
]]
