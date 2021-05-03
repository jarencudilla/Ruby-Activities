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

gamer1 = GamerLife.new("Badongpagong", "Warzone", "8")
gamer2 = GamerLife.new("Badongpagong1", "Division2", "24")

gamer1.letsgo
gamer2.nogo