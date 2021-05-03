class GamerLife
    def initialize(name, game, hours)
     @name = name
     @game = game
     @hours = hours
    end
    def gameon
        puts "Yo #{@name}, let's go play #{game}" 
    end

    def nogo
        puts "No man, been playing #{game} for #{hours} now" 
    end
end

gamer1 = GamerLife.new("Badongpagong", "COD:Warzone" "8")
gamer2 = GamerLife.new("Badongpagong1", "COD:Warzone" "24")

gamer1.gameon
gamer2.nogo