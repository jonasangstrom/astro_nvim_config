return {
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },

    {
        "ray-x/lsp_signature.nvim",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("lsp_signature").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },



    {
        "milanglacier/yarepl.nvim",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("yarepl").setup({
                -- see `:h buflisted`, whether the REPL buffer should be buflisted.
                buflisted = true,
                -- whether the REPL buffer should be a scratch buffer.
                scratch = true,
                -- the filetype of the REPL buffer created by `yarepl`
                ft = 'REPL',
                -- How yarepl open the REPL window, can be a string or a lua function.
                -- See below example for how to configure this option
                wincmd = 'vertical 50 split',
                -- The available REPL palattes that `yarepl` can create REPL based on
                metas = {
                    ipython = { cmd = 'ipython', formatter = require("yarepl").formatter.bracketed_pasting },
                    python = { cmd = 'python', formatter = require("yarepl").formatter.trim_empty_lines },
                    bash = { cmd = 'bash', formatter = require("yarepl").formatter.trim_empty_lines },
                    zsh = { cmd = 'zsh', formatter = require("yarepl").formatter.bracketed_pasting },
                },
                -- when a REPL process exits, should the window associated with those REPLs closed?
                close_on_exit = true,
                -- whether automatically scroll to the bottom of the REPL window after sending
                -- text? This feature would be helpful if you want to ensure that your view
                -- stays updated with the latest REPL output.
                scroll_to_bottom_after_sending = true,
                os = {
                    -- Some hacks for Windows. macOS and Linux users can simply ignore
                    -- them. The default options are recommended for Windows user.
                    windows = {
                        -- Send a final `\r` to the REPL with delay,
                        send_delayed_cr_after_sending = true,
                    },
                },
            })
        end,
    },
}
