local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local clg_snippet = s("clg", {
    t('console.log('),
    i(1),
    t(')')

})
local function get_filename_without_extension()
    local filename = vim.fn.expand("%:t")
    return filename:gsub("%..*$", "")
end
ls.add_snippets("lua", {
    s("hello", {
        t('print("hello '),
        i(1),
        t(' world")')
    }),
    s("if", {
        t("if "),
        i(1, "true"),
        t(' then '),
        i(2),
        t(' end')
    })
})
ls.add_snippets("typescript", {
    clg_snippet,
    s("try", fmt(
    [[
        try {a}
            {c}
        {b} catch(err) {a}
            console.log(err)
        {b}
    ]], {a = t("{"), b = t("}"), c = i(1)}
    ))
})
ls.add_snippets("javascript", {
    clg_snippet
})
ls.add_snippets("typescriptreact", {
    s("tsfc", fmt(
    [[
    type {a}Props = {b}
        {}
    {c}
    const {a} = ({b}{}{c}: {a}Props) => {b}
        return (
            {}
        )
    {c}
    export default {a}
    ]], {a = f(get_filename_without_extension), b = t("{"), i(1), i(2), i(3), c = t("}")}))
})
