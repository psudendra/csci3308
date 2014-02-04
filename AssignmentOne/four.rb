#Part 4: Rock Paper Scissors
#4A
class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end

def check_requirements(requirements) #check if valid
	if requirements == nil
		return false
	elseif !requirements.is_a?(String)
		return false
	elseif !requirements.downcase.match(/[rps]/)
		return false
	else
		return true
	end
end


def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length ==2
	raise NoSuchStrategyEroor unless check_requirements(game[0][1]) && check_requirements(game[1][1]) #check to make sure requirements are met

	win_formula=["rs", "sp", "pr", "rr", "ss", "pp"]
	return win_formula.index(game[0][1].downcase+game[1][1].downcase) ? game[0] : game[1]
end

def contains_game(game) #start tournament
	return game[0][0].is_a?(String)
end

def rps_tournament_winner(tournament)
	if contains_game(tournament)
		return rps_game_winner(tournament)
	end
	rps_game_winner [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
	end

game_list = [["Armando", "P"], ["Dave","S"]]
puts game_list.to_s + "=>" + rps_game_winner(game_list).to_s
puts
tournament_list = [
[
[ ["Armando", "P"], ["Dave", "S"] ],
[ ["Richard", "R"],  ["Michael", "S"] ],
],
[
[ ["Allen", "S"], ["Omer", "P"] ],
[ ["David E.", "R"], ["Richard X.", "P"] ]
]
]
puts tournament_list.to_s + "=>" + rps_tournament_winner(tournament_list).to_s

gets


