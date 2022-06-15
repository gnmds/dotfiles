local status_ok, kanagawa = pcall(require, 'kanagawa')
if not status_ok then
    return
end

kanagawa.setup({
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { bold = true },
    statementStyle = {},
    typeStyle = {},
    variablebuiltinStyle = { bold = true },
    specialReturn = true,
    specialException = true,
    transparent = true,
    dimInactive = false,
    globalStatus = false,
    colors = {},
    overrides = {}
})

local colorscheme = 'kanagawa'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end
