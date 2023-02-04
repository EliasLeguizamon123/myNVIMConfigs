 
 require('dashboard').setup({
  config = {
	header = {
		'',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓', 
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░    ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓    ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒   ▓▓▓▓           ▓▓▓▓▓           ▓▓▓▒   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓░   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓             ▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓    ▓▓▓▓▓▓▓▓▓▓▓      ▒▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒  ░▓▓▓▓▓▓▓▓▓      ▓▓▓▓▓▓  ▒▓▓▓▓▓▓      ▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓    ▓▓▓▓▓▓   ▓   ▓   ▓   ▓▓▓▓▓▓    ▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓    ▓▓▓▓    ▓▓▓   ▓ ▒   ▓▓▓   ▓▓▓▓▓    ▓▓▓▓▓  ▒▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓   ▓▓▓▓    ▓▓▓             ▓▓▓    ▓▓▓▓   ▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓   ▓▓▓    ▒        ▓▓▓▓▓       ▓     ▓▓▓   ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓░ ▓▓▓   ▓            ▓▓▓▓           ▒   ▓▓▓ ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓▓   ▓▓     ▓    ▓       ▓    ▓     ▓▓  ▒▓▓▓▓▓  ▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓   ▓▓    ▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓    ▓▓   ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓   ▓▓▓  ▓▓▓   ▓▓▓▓ ▓▓▓▓  ▓▓▓▓   ▓▓▓  ▓▓▓   ▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ▓▓  ▓▓▓  ▓▓▓   ▓      ▓▓▓      ▓   ▓▓▓  ▓▓▓  ▓▓  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓ ▓▓▓      ▓▓   ▓▓▓   ▓▓     ▓▓▓▓ ▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓    ▓▓▓▓   ▓▓▓   ▓▓▓▓    ▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓   ▓▓▓   ▓▓▓▓▓▓   ▓▓▓▓▓▓▓▒  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓   ▓▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓    ▓▓▓   ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓    ▓▓▓    ▓▓▓▓▓▓▓▓▓▓▓▓░  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓  ▓▓▓▓▓▓    ▓▓▓    ▓▓▓▓▓▓  ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓   ▓▓▓▓    ▓▓▓    ▓▓▓▓   ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▒▓▓     ▓    ▓▓▓    ▓     ▓▓    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓        ▓▓▓        ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓      ▓▓▓      ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓    ▓▓▓   ▓▓▓   ▓▓▓    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓             ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
		'',
		'',
		'                            Elias Leguizamon Config                             ',
	},
  	center = {
    			{
      				icon = '',
      				icon_hl = 'group',
      				desc = 'description',
      				desc_hl = 'group',
      				key = 'shortcut key in dashboard buffer not keymap !!',
      				key_hl = 'group',
      				action = '',
    			},
  		},
  	footer = {},
}
})
