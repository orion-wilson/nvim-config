-- Text objects (use with c/d/y + i/a):
--   a  argument    cia / caa
--   b  any bracket cib / cab
--   q  any quote   ciq / caq

return {
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    opts = {
      custom_textobjects = {
        f = false,
        c = false,
        t = false,
      },
    },
  },
}
