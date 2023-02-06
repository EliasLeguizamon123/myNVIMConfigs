local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local v = vim.version()
local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

dashboard.section.header.val = {
	'',
	'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@@@@@,     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.                *@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@@@@@,     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#                        @@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@/           @@/     @@@@@@@@@@@@@@@@@@@@@*       &@@@@@@@@@@@@#       &@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@               @@@,  .@@@@@@@@@@@@@@@@@@@@@      &@@@@@@@@@@@@@@@@@@/      @@@@@@@@@',
	'@@@@@@@@@@@@@&       /@@@,     @@@@@@@@@@@@@@@@@@@@@@@@@@@     *@@@@@@@@@@@@@@@@@@@@@@      @@@@@@@@',
	'@@@@@@@@@@@@      /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     *@@@@@@@@@@@@@@@@@@@@@@@@     *@@@@@@@',
	'@@@@@@@@@@@      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.           .@@@@@@.    #@@@@@@@@@/     @@@@@@@',
	'@@@@@@@@@@,     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.           .@@@@@@@    @@@@@@@@@@,     @@@@@@@',
	'@@@@@@@@@@     (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     %@@@@@@@',
	'@@@@@@@@@@     /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(     /@@@@@@@@',
	'@@@@@@@@@@(     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/      &@@@@@@@@@',
	'@@@@@@@@@@@,     %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/        (@@@@@@@@@@@',
	'@@@@@@@@@@@@#      %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          .@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@,        %@@@@@@@@&.  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      (@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@,            .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
	'',
	'--------------- life before death strength before weakness journey before destination --------------',
}

dashboard.section.footer.val = {
  version,
}

alpha.setup(dashboard.opts)