local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path
    }
    print "Installing packer close and reopen Neovim ..."
    vim.cmd [[packadd packer.nvim]]
end

-- autocmd that automatically reloads nvim if plugins.lua is saved
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- use a protected call so we dont error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- install plugins
return packer.startup(function(use)

    use "wbthomason/packer.nvim" -- packer manages itself
    use "nvim-lua/popup.nvim" -- popup api from vim in neovim
    use "nvim-lua/plenary.nvim" -- lib functions
    use { "rebelot/kanagawa.nvim", as = "kanagawa" } -- color scheme

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)