# Oil.nvim Cheatsheet

## Open / Close

- `-` — open parent directory of current file
- `-` again — go up another directory
- `Enter` — open file or directory under cursor
- `q` — close oil without saving changes

## File Operations

Edit the buffer like normal text — changes only apply when you save.

- **Rename**: edit the filename text
- **Delete**: delete the line (`dd`)
- **Create file**: add a new line with a filename
- **Create directory**: add a new line ending with `/`
- **Move**: yank a line, paste it after opening a different directory

`:w` — confirm and execute all pending changes
Oil will prompt for confirmation before destructive actions.

## Navigation

- `g.` — toggle hidden files (also enabled by default in your config)
- `gx` — open file in system viewer
- `-` — go to parent directory
