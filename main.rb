require_relative 'game'
  require_relative 'box'
  require_relative 'die'
  require_relative 'dice'



NUM_T = 9
n_dice = 2
n_sides = 6


dice= Dice.new(n_dice, n_sides)
box= Box.new(NUM_T)

game=Game.new(box, dice)


puts Game::WELCOME_MESSAGE
 game.start!
game.play until game.over?

puts   game.results



















