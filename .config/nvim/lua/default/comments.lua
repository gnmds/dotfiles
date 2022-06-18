local status_ok, comments = pcall(require, 'Comment')
if not status_ok then
    return
end

comments.setup({
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = 'lct',
        block = 'bct'
    },
    opleader = {
        line = 'lc',
        block = 'bc'
    },
    mappings = {
        basic = true,
        extra = false,
        extended = false
    }
})
