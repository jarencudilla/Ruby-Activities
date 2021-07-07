# Interface Segregation Principle

# bad code

class GunStore
  def initialize(gun_type, order, quantity, price)
    @gun_type = gun_type
    @order = order
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

  def process_order; end

  def check_inventory; end

  def check_gun_license; end
end

# good code?

class GunStore
  def initialize(gun_type, order, quantity, price)
    @gun_type = gun_type
    @order = order
    @quantity = quantity
    @price = price
  end

  def check_price; end

  def calculate_price; end

  def buy_guns
    check_inventory
    check_price
    check_gun_license

    process_order
    calculate_price
  end

  private

  def process_order; end

  def check_inventory; end

  def check_gun_license; end
end
