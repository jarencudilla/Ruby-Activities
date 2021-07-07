# Open Closed Responsibility Principle

# bad code
class GunStore
  class NotInStock < InventoryError; end

  def initialize(gun, ammo, quantity, price)
    @gun = gun
    @ammo = ammo
    @quantity = quantity
    @price = price
  end

  def purchase_total
    @quantity * @price
  end

  def select_gun_type(type)
    case gun_type(type)
    when 'pistols'
      pistols
    when 'shotguns'
      shotguns
    when 'assault_rifles'
      assault_rifles
    when 'rifle'
      rifles
    else
      raise NotInStock, "We're out of #{gun_type(type)}"
    end
  end

  private

  def pistols
    puts 'Pistol with 9mm Ammo'
  end

  def shotguns
    puts 'Shotgun with 12ga Ammo'
  end

  def assault_rifles
    puts 'AR with 5.56mm Ammo'
  end

  def rifles
    puts 'Rifle with 7.62mm Ammo'
  end
end

buy_gun = GunStore.new('pistol', '9mm', 10, 500)
puts buy_gun.purchase_total

# good code?
class GunStore
  class NotInStock < InventoryError; end

  def initialize(gun, ammo, quantity, price)
    @gun = gun
    @ammo = ammo
    @quantity = quantity
    @price = price
  end

  def purchase_total
    @quantity * @price
  end

  def select_gun_type(type)
    case gun_type(type)
    when 'pistols'
      pistols
    when 'shotguns'
      shotguns
    when 'assault_rifles'
      assault_rifles
    when 'rifle'
      rifles
    else
      raise NotInStock, "We're out of #{gun_type(type)}"
    end
  end
end

class Pistol9mm < GunType
  def pistols
    puts 'Pistol with 9mm Ammo'
  end
end

class Shotgun12ga < GunType
  def shotguns
    puts 'Shotgun with 12ga Ammo'
  end
end

class AssaultRifle556 < GunType
  def assault_rifles
    puts 'AR with 5.56mm Ammo'
  end
end

class Rifle762 < GunType
  def rifles
    puts 'Rifle with 7.62mm Ammo'
  end
end
