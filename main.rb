require "./lib/human_player.rb"
require "./lib/mastermind.rb"
require "./lib/board.rb"

board= Board.new()
human_player= HumanPlayer.new("human")
computer_player= HumanPlayer.new("computer")
game = Mastermind.new(human_player,computer_player,board)
#game.play()
p human_player.name