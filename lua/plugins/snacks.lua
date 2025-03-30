return {
	"folke/snacks.nvim",
	opts = {
		notifier = {
			-- your notifier configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		gitbrowse = {
			-- your gitbrowse configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		dashboard = {
			preset = {
				keys = {
					{ icon = " ", key = "p", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "l",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				width = 100,
				header = [[
                                 .~!!7!!^.            !!!777777.                    7J^             
           ::..                !J!:.. ..:!J~  .       5P?^^^^^~.                    JP!             
           ~PY!!77!~^:.     .7J~       .!: 7Y?7.      5P^          :~~~^.   .^. :^. JP~ .^:     .:: 
            :Y~    .:^~!!77?Y^          :.  YJ        55J!7777~  :YY^::?P7  7P5J?7: JP~ .YP!   .5P^ 
  ^~^^^^^^^^^7P?^^^^^::^^75~                Y?        557:^^^^:   :^:^^755. !PY.    JP~   JP! .YP^  
  :?PJ^.....:...::::::::::                 75.        5P^        !5?:..~55. !P?     JP~    JP7JP~   
    .~J!.                                ^J7          5PY77777?. 7PJ::^?PP. 7PJ     YP!     JPP~    
       ^J?:                             JY.           ...::::::   .:^^: ::  .:.     .:.     YP~     
         .7J^                           5!            :::::::.    :!~                  ~~ :Y5~      
            75!                        !5.            5PJ~!!?5Y:  ^?7                  5P..:        
          .~J!.                       :P^             5P^    ?PJ   ..   ..  ..    .::..5P.          
        :7?^                         ^5^              557^^~75?.  ^PY  :P5JYJ! .?5J7!?Y55.          
      ~J7:.^                       .?J.               55?~~~!YJ^  ^PY  :P5^    5P^    :55.          
   .7J~.^??!J!.                 .^??:                 5P^    :PP. ^PY  :P5    .PP.    .5P.          
 ^??: ^?!.   :!?7~:..     ..:~!77^.                   5P7^^^!Y57  ^PY  ^P5     ^55~::~Y5P.          
 ~.             .:~!777777!~^:.                       ~~!!!!~^.   .!~  .!~       ^!77~.~!.          
            ]],
			},
		},
	},
}
