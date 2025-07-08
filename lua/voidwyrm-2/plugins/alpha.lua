return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            "]@@@@@>                          :@@@@@@                                                                                                           ",
            "?@@@@@@!                         @@@@@@@                                                                                                           ",
            "?@@@@@@@                        @@@@@@@@                                                                                                           ",
            "?@@@@@@@@                      *@@@@@@@@                                                                                                           ",
            "?@@@@@@@@4                    L@@@@@@@@@                                                                                                           ",
            "?@@@@'@@@@]                  -@@@@:d@@@@             `(I@@@@@@@6v;                  ')I@@@@@@@@1<-         \"@kU@             @Ud@]            r@k6@",
            "?@@@@ .@@@@:                 @@@@> @@@@@           +@@@@@@@@@@@@@@@@-             [@@@@@@@@@@@@@@@@1        @@@@[           I@@@@@`           @@@@1",
            "?@@@@  L@@@@                @@@@4  @@@@@         !@@@@@@)-   `_?@@@@@@          L@@@@@@),    .ro@@@@@x      ]@@@@           @@@@@@@          )@@@@ ",
            "?@@@@   x@@@@              x@@@@   @@@@@        c@@@@3           _@@@@@        V@@@@@            u@@@@@      @@@@]         U@@@@@@@,         @@@@> ",
            "?@@@@    @@@@2            )@@@@    @@@@@       \"@@@@[              @@@@@      ?@@@@[              \"@@@@@     )@@@@        .@@@< @@@@        f@@@@  ",
            "?@@@@     @@@@L          .@@@@_    @@@@@       @@@@@               _@@@@;     @@@@@                h@@@@:     @@@@)       @@@@  ]@@@!       @@@@(  ",
            "?@@@@     -@@@@-         @@@@]     @@@@@      :@@@@n . '''''''''```:@@@@1    f@@@@f                '@@@@x     ;@@@@      _@@@(   @@@@      !@@@@   ",
            "?@@@@      +@@@@        @@@@3      @@@@@      L@@@@@@@@@@@@@@@@@@@@@@@@@@    n@@@@.                 @@@@@      @@@@r     @@@@    \"@@@f     @@@@!   ",
            "?@@@@       1@@@@      s@@@@       @@@@@      <@@@@@[s777777777777susI7x<    n@@@@.                 @@@@@      -@@@@    r@@@_     @@@@    :@@@@    ",
            "?@@@@        @@@@Y    f@@@@        @@@@@      _@@@@f                         f@@@@(                .@@@@h       @@@@!   @@@@      ,@@@]   @@@@-    ",
            "?@@@@         @@@@(  '@@@@_        @@@@@       @@@@@                          @@@@@                y@@@@,       `@@@@  L@@@'       V@@@  -@@@@     ",
            ">@@@@         -@@@@' @@@@]         @@@@@       f@@@@[               -.`-      <@@@@h              )@@@@3         1@@@, @@@1         @@@s @@@@'     ",
            "?@@@@          L@@@@@@@@3          @@@@@        [@@@@@'           r@@@@@       s@@@@@'           *@@@@@           @@@@x@@@          u@@@?@@@1      ",
            "c@@@@           F@@@@@@@           @@@@@         ;@@@@@@?;.``'-(Y@@@@@I         r@@@@@@c!.  ':L@@@@@@?            [@@@@@@>           @@@@@@@       ",
            "[@@@@            @@@@@@            @@@@@           )@@@@@@@@@@@@@@@@C`            +@@@@@@@@@@@@@@@@[               @@@@@@            L@@@@@n       ",
            "!3I1I             FxYk-            Lksk<              \"?*@@@@@@dnf'                  \"?*@@@@@@3nf`                 ;kYxk_             7x1YC        ",
        }

        dashboard.section.buttons.val = {
            dashboard.button("f", "  > Find File", ":Telescope find_files<CR>"),
            dashboard.button("m", "  > Marks", ":lua require('harpoon.ui').toggle_quick_menu()<CR>"),
            dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
