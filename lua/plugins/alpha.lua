local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local v = vim.version()
local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch
local datetime = os.date " %d-%m-%Y 󱑏 %H:%M:%S"

local pluginCount = vim.fn.len(vim.fn.globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))
local plugins = ' Packages installed ' .. pluginCount .. ' ' 

dashboard.section.header.val = {
"                       :                    ::                    :.                      ",
"                      :-:                   :-.                  .--                      ",
"                      ---:                 .--:                 .---.                     ",
"                      ----:                .--:                .----.                     ",
"                      :----:               .---               .----:                      ",
"                       :----.              :---              .-----.                      ",
"                        :----:             :---             .----:                        ",
"               ::.       .----:            :---            .----:       .::.              ",
"               .--:.       :---:           :---           :---:.      .:--:               ",
"                :----:      .:---.         .--:         .:--:.      .-----                ",
"                 :-----:      .:--:.       .--:        :---:      .:-----.                ",
"                  .:-----:      .:--:.     .--:     .:---:      .:----:.                  ",
"                     .:----:.     .:---:.  .--:   .:---:      :----:.                     ",
"                        .:---:.     .:----::--:::---:.     .:----:.                       ",
"                           .:---:.     .::------::.     .:---::.                          ",
"                      ::.     .::--::..    .--:    ..::---:.     .::                      ",
"                       ---::..    .::-----..--. :-----:..    .::---.                      ",
".:.                    .:------:..    :--:  --. .---.    .::------:                    ...",
".---:..                   ..::-----:  :--. .--:  ---  :-----::...                   .:---:",
"  .:----::.                    :----  :--  .--:  :--  :----.                   ..:----::. ",
"     .::----::..            .:-----.  .--. .--:  --:   -----:.            ..::----::.     ",
"     .....:::-----:::....   .::---.   .--: .--: .--:    :--::.    ...:::-----:::.....     ",
"     .:----::...:::----------:::--:::::--- .--: :--::::::-:::----------:::....:----:.     ",
"        ::-----:.     ...:::---------:::--::--::---::----------:::...     .:-----:.       ",
"          ..:-----:.       -:        ...::-------:....       .-.       .:----:..          ",
"              ..::--:.    :-: .:  .:---:. :----: .::--:.  .. .--     :--::..              ",
"                    ..    ---:--  ---      :--:      :--. :--:--.   ..                    ",
"                         :------..---       --.      :--: ------:                         ",
"                         ::::---.:---       --.      :--: ---:.::                         ",
"                            .---..---.      --.      ---: ---:                            ",
"                             ---. :--:     .--:     .---..---.                            ",
"                             :--: .---.    .--:     ---. .---.                            ",
"                             :--:  .---.   :---   .:--.  .---                             ",
"                             :--.    :--:. :--- .:---.   .---                             ",
"                             .--.     .:-----------:      --:                             ",
"                              --.       .:------:.        --.                             ",
"                              :-.          .--:           -:                              ",
"                               :           .--.           :                               ",
"                                            --:                                           ",
"                                           .--:                                           ",
"                                           .--:                                           ",
"                                           :---                                           ",
"                                           :---                                           ",
"                                           :---                                           ",
"                                           :--:                                           ",
"                                            :-.                                           ",
"                                                                                          ",
"                     If I must fall, I will rise each time a better man                   ",
"                                                                                          ",
"          .::-::.                                   .:                                    ",
"             =                                      =:                                    ",
"            ::                                      *.                                    ",
"            =           =                      .-   #.                           =        ",
"            =          .#                      +.  ---                           *        ",
"           --          =+                     :#   = +                          +-        ",
"           %         := -:      =   +        =-=   = -:        .*     =        ==         ",
"          -:        -:   +     -.  -+       = -.  +:  +        ++    ::=     := +::=      ",
"      ::::*:::::::-+-::::=+::::*:.:*+=:.::=+::*::-%::::*+-:::-*-+=:.:*:+:::-+=::+*:+:     ",
"          =       .=    .-.    =   *-     -:  =  =.   ::.    :=.-    ==    .=  =.==       ",
"         -.         =  .-     ::  -+       = +:  +  .=        +=    ::-      = +..-       ",
"         +          + --      -   =        .=#   - :-         =     -        +.=          ",
"         =          =+.                     %.  =.=:                         -%.          ",
"        ::          =-                      #   =+                           =*           ",
"        =           :                       :   #.                           :            ",
"        =                                      --                                         ",
"       ::                                      *                                          ",
"    .:::::.                                    .                                          "
}
-- dashboard.section.header.val = {
-- 		',
--     	'────────────────────────────────────────┌───────────────────────────────────────',
--     	'──────────────────────────────────────┌▄╨▀▄─────────────────────────────────────',
--     	'───────────────────────────────────┌╔▄└▐▓╕─▀█▄──────────────────────────────────',
--     	'────────────────────────────────┌═▄┘──┌▄█▓┐──▀█▄┌───────────────────────────────',
--     	'─────────────────────────────┌─╠┘▄╗─▄██▀─└╥▀╖─▄▄▀█▄╖────────────────────────────',
--     	'──────────────────────────┌═▄└▌──▄██▀└──────└┐▀┐───▓▀█▄─────────────────────────',
--     	'──────────────────────┌═╬▄└─┌▀▄██▀▀─┌▄╜▌─▐▀▄▄─┌└╖└─┌╕─└▀█▄╖─────────────────────',
--     	'─────────────────────▐╡▐─▀▄▄██▀─▀▀▐─╫──▀▄╜─▌▓─█▄▐▄└─┌╙┐▀─▌▀█▌───────────────────',
--     	'─────────────────────▐▄▐██▀▀────▌▐▐▌▓──▌▐▐─▌▐▀██─▌─────┐└▌▄▐▌───────────────────',
--     	'────────────────────▐╞╓▐█───────██▐▌▓▐─█▓▀▄▌▓▄█▓▄▌──────╗─▄▐█───────────────────',
--     	'──────────────────▄██╞└─█────────█▐╞▄▐─▀──╗▌▄▐▌▓────────╗─└▐██╦─────────────────',
--     	'────────────────┌▄███╞─╢█────────█▀▀▄─────▌▌╫▓▓█────────╬▓─▐█▀▄▓────────────────',
--     	'───────────────╓█████╫└─█────────█▐▐─▄▄▄╓┌▌▄▄▀▌▓▄───────╕─└▐██▓███┌╛────────────',
--     	'──────────────███████▓──█───────▐█▐▐─▌▀▀▐╨▀──┤▓██──────────▐███████└────────────',
--     	'────────────╓██▓▄████▐┌┌█▌───────█▐▐─═─█─▀▌▌─▌▌█────────▐─┌▐███▓▄███────────────',
--     	'─────────┌──▐█████▓██▄▀▀█▌───────█─▐─▓─▌──▌▄─▌▌█───────▐▐▀▀▓█████████▀──────────',
--     	'───────────╨█████████▀──▓█───────█─═─█────▌█─▀▀█───────▐│──██████████───────────',
--     	'───────────▐█████████▌▌─▐█───────▀▀▀▀▀╙─▐─▀▀▀▀▀▀───────┘╚──███▀▄█████▀──────────',
--     	'───────────▄██████▓███┤▄▄█──────────────█───────────────▄▄─█▀▄█████▓▀▌──────────',
--     	'──────────└▐████▀█████▀──█▌───────█▄────█▌───┌▄▌──────┌╒──▓█████▓▓▓███▄─────────',
--     	'───────────╫▀███████▐█▌╕─▐█─────█─█▀█▄▄█─█▌▄█▀▐─▄─────╛╜──█▓▀████████▌──────────',
--     	'────────────▀▓███▀▀▄█▓█▐┌╖█▌────███▐▀▓▄╪▄▐─▓▀█▓▓█────┌╒▄┌▐█▄█████████▀──────────',
--     	'────────────▓███▀▓█▓██▓▌╕▀▐█────▐─▀▌▀╓╜▌▀▌▌╖▄─█┌█─────╜▀└████████████───────────',
--     	'───────────┌└██▓▓▓██████╬──▀█───▐▌█▌▐▐▐╒▓▄▀▀▐─█─█───┘╓──▄█▀███████▀█────────────',
--     	'─────────────└███████████╘──█▌──▄▌▀▀─▀═─█▄═╝─▓▀╗█──╒╒──╒███████████▀────────────',
--     	'──────────────▐▀██████▓▀▄█╕▓▀█▌─█─▀▄▄▄▌│▀▀└═▄╗▀▌╫▌┌╓▀▓╥█▀▄██████▀▄──────────────',
--     	'────────────────▀▀██████▄▓▌╕──█▌█▄▀╓▓┌╘└╫─╒─▄▌▐▄▓▌┌───██████████▀───────────────',
--     	'─────────────────▀███▓█▓█▓█▌┐──██──└▀▀▀▀▀▀▀▀▀▀└─┘╒───██████████▌────────────────',
--     	'──────────────────╙▀▀▀████▀█▌╓█▓▀█▄───────────┌└╛▀█╥██▌██████▀──────────────────',
--     	'─────────────────────└╨▀█╛▓▀██└──└██╕────────╛┌└──▄█████▓██▀────────────────────',
--     	'─────────────────────────╨▓└▓██▄╕──▀██─────▄─┘──▄██████▀▀───────────────────────',
--     	'────────────────────────────└▀─▀█╬▄└╙▀█▓─▄▀═└└└████▀▀───────────────────────────',
--     	'──────────────────────────────────╒╘─▄▄▀█▓╓▄╕▄█▀────────────────────────────────',
--     	'────────────────────────────────────┐▀─▄▐═─▀█▀──────────────────────────────────',
--     	'─────────────────────────────────────└┐╕▀╥█▀────────────────────────────────────',
--     	'───────────────────────────────────────└▄▀──────────────────────────────────────',
--     	'────────────────────────────────────────────────────────────────────────────────',
-- 		'─────life before death strength before weakness journey before destination ─────',
-- 		'────────────────────────────────────────────────────────────────────────────────',
-- }

dashboard.section.header.opts.hl = "Warning"

dashboard.section.buttons.val = {
			dashboard.button("e", "	>	New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰮗	>	Find file", ":cd $HOME/Desktop/work | :Telescope<CR>"),
			dashboard.button("r", "	>	Recent file", ":Telescope oldfiles<CR>"),
			dashboard.button("q", "	>	Close nvim", ":q!<CR>"),
}

dashboard.section.buttons.opts.hl = 'Debug'
dashboard.section.footer.opts.hl = "String"

dashboard.section.footer.val = {
	'',
	'',
  	version,
  	'',
  	datetime,
  	'',
  	plugins,
}

alpha.setup(dashboard.opts)

