class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  W_M = "You shut da box!"

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end

  def over?
    if box.shut? then return true
    dice_list.each do |die|
      if box.can_flip_tile?(die.value) then return true
    end
  end

  def start!
    prepare_next_round
  end

  def prepare_next_round
    dice.roll
  end

  def play
    print '| '
    box.to_s
    print "\n"
    print "You rolled: "
    puts dice.to_s
    puts "\n"
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
    box.flip_tiles(tiles_to_flip)
    prepare_next_round
  end

  def results
    box.shut? ? W_M : "Game over, you did not shut da box."
  end

end
