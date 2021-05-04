# frozen_string_literal: true

class GamerLife
  def initialize(name, game, hours)
    @name = name
    @game = game
    @hours = hours
  end

  def letsgo
    puts "Yo #{@name}, let's go play #{@game}"
  end

  def nogo
    puts "No man, been playing #{@game} for #{@hours} hours now"
  end
end

gamer1 = GamerLife.new('Badongpagong', 'Warzone', '8')
gamer2 = GamerLife.new('Badongpagong1', 'Division2', '24')

gamer1.letsgo
gamer2.nogo

# getter
# manual
# def game
#     @game
# end

# attr_reader :game

# setter
# manual
# def game=(new_game)
#     @game = new_game
# end

# attr_writer :game

# for read/write
# attr_accessor :game
