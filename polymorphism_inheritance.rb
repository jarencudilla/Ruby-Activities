# inheritance
class Soldier
  def initialize(name, rank, serial_number)
    @name = name
    @rank = rank
    @serial_number = serial_number
  end

  def roll_call
    puts " I'm #{@name}, #{@rank} #{@serial_number}"
  end
end

class Cadet < Soldier
  def roll_call
    puts "Sir, My name is #{@name}, Sir! My rank is #{@rank}, Sir! My serial number is #{@serial_number}, Sir!"
  end
end

class Officer < Soldier
  def roll_call
    puts "You maggots, I am #{@rank} #{@name}, drop and give me 50!"
  end
end

juan = Cadet.new('Juan Tamad', 'Private', 0o00777111 - 5)
pedro = Cadet.new('Pedro Penduko', 'Private', 0o00777111 - 6)
kuma = Officer.new('Kuma Kamon', 'Sergeant', 0o00222111 - 0)
juan.roll_call
pedro.roll_call
kuma.roll_call
