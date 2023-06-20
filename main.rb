require "./lib/human_player.rb"
require "./lib/computer_player.rb"
require "./lib/mastermind.rb"
require "./lib/board.rb"

board= Board.new()
human_player= HumanPlayer.new("Mark")
computer_player= ComputerPlayer.new()
game = Mastermind.new(computer_player,human_player,board)
game.play()
