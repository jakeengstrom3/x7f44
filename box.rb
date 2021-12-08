class Box

  attr_reader :shut_tiles, :number_of_tiles, :value, :tiles


  def initialize(number_of_tiles)
    @number_of_tiles = number_of_tiles
    @tiles = []
    @number_of_tiles.times do |i|
      @tiles << i + 1
    end
    @shut_tiles = []
  end

  def shut?
    tiles.empty? && shut_tiles.length == number_of_tiles
  end

  def can_flip_tile?(tile_to_flip)
    tiles.include?(tile_to_flip)
  end

  def to_s
    tiles.each do |tile|
      print tile.to_s + ' | '
    end
  end

  def flip_tiles(tiles_to_flip)
    tiles_to_flip.each do |tile_to_flip|
      if can_flip_for(tile_to_flip)
        shut_tiles << tile_to_flip
        tiles.delete(tile_to_flip)
    end 
  end

end
