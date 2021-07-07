# Dependency Inversion Principle

# bad code
# good code?

class GunStore
  def initialize(gun, ammo, quantity, price)
    @gun = gun
    @ammo = ammo
    @quantity = quantity
    @price = price
  end

  def purchase_total
    @quantity * @price
  end
end

class Guns
  def gun_type
    puts ''
  end

  def ammo
    puts ''
  end

  def mode_of_fire
    puts ''
  end
end

class Pistol < Guns
  def gun_type
    puts 'Pistol'
  end

  def ammo
    puts '9mm'
  end

  def mode_of_fire
    puts 'Semi-Automatic'
  end
end

class Shotgun < Guns
  def gun_type
    puts 'Combat Shotgun'
  end

  def ammo
    puts '12 Gauge'
  end

  def mode_of_fire
    puts 'Semi-Automatic'
  end
end

class AssaultRifle < Guns
  def gun_type
    puts 'Assault Rifle'
  end

  def ammo
    puts '5.56mm'
  end

  def mode_of_fire
    puts 'Full Automatic, Semi-Automatic'
  end
end

class Rifle < Guns
  def gun_type
    puts 'Battle Rifle'
  end

  def ammo
    puts '7.62mm'
  end

  def mode_of_fire
    puts 'Semi-Automatic, Bolt-Action'
  end
end

def buy_guns(_guns)
  puts "You bought a/an #{gun_type} with ammo type #{ammo} rate of fire #{mode_of_fire}"
end

beretta_m9 = Pistol.new
benelli_m4 = Shotgun.new
colt_m4 = AssaultRifle.new
fn_scar_h = Rifle.new

buy_guns(beretta_m9)
buy_guns(benelli_m4)
buy_guns(colt_m4)
buy_guns(fn_scar_h)
