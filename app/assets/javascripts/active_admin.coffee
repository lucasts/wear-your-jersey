# Gems js files
#= require active_admin/base
#= require activeadmin-sortable

# Wear-your-jersey js files and your dependencies
#= require almond
#= require activeadmin/player-form/get-positions

require ['activeadmin/player-form/get-positions'], (getPositionsOnPlayersForm) ->
  getPositionsOnPlayersForm.init()
