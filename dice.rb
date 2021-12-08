class Dice

  attr_reader :dice_list

  def initialize(n_dice, n_sides)
    @n_dice = n_dice
    @n_sides = n_sides
    @dice_list = []
    n_dice.times do 
      @dice_list << Die.new(n_sides) 
    end
  end

  def roll
    dice_list.each(&:roll!)
  end

  def to_s
    dice_list.each do |die|
      print "#{die.to_s} "
    end
  end
end