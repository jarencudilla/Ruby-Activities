#Single Responsibility Principle

#good code? 

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

# def gun_type
#     puts "type of gun"
# end

# def ammo_type
#     puts "type of ammo"
# end
end

buy_gun = GunStore.new('pistol', '9mm', 10, 500)
puts buy_gun.purchase_total