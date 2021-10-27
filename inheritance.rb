# class Animal
#     def speak
#         "Hello!"
#     end
# end

# class GoodDog < Animal
# end

# sparky = GoodDog.new
# puts sparky.speak

# class Animal
#   def speak
#       "Hello!"
#   end
# end

# class GoodDog < Animal
#   def speak
#     # super +
#     " from GoodDog Class"
#   end
# end

# sparky = GoodDog.new
# puts sparky.speak

# module Swimmable
#   def swim
#     "I'm Swimming!"
#   end
# end

# class Animal; end

# class Fish < Animal
#   include Swimmable
# end

# dory = Fish.new
# puts dory.swim

# namespacing

# module Language
#   class Ruby
#     def info
#       puts "Ruby Programming Language"
#     end
#   end
# end

# ruby = Language::Ruby.new
# ruby.info

# private method

# class Person
#   def initialize(age)
#     @age = age
#   end
# end

# protected_methods

class Animal
  def initialize(age)
    @age = age
  end

  # def less_than_age(animal)
  def <(other)
    age < other.age
  end

  protected

  attr_reader :age
end

fido = Animal.new(3)
cat =  Animal.new(2)

puts fido < cat
# puts fido.less_than_age(cat)


#testing stuff