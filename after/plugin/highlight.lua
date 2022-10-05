local ok, highlight = pcall(require, "nvim-highlight-colors")
if not ok then
  return
end

highlight.setup {}
highlight.turnOn()
