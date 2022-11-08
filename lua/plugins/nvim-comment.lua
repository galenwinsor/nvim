local status, comment = pcall(require, "nvim_comment")
if not status then
  print('Could not load nvim-comment')
  return
end

comment.setup()
