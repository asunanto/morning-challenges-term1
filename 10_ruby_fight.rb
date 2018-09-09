# The Company has two directors who are passionately disagreeing, they want to fight it out. 
# Being the fantastic human you are, you propose creating a virtual fight to minimise physical harm.
# You need to create a simple fighting game, where two opponents will fight until one of them loses.

# Hints: start by creating a Player class (the instance variables could be name, health and power).
# You’ll need a few methods, consider one that keeps track of whether a player is alive, 
# another one that calculates the impact of hits (decreases the opponents heath by the the amount of the other players power). 
# And a third that outputs the players information.

# You’ll then need to make a fight method that uses a loop to make the players hit one another until
# the is alive method returns false for one of them. When the loop is finished (which would mean one of the players has lost), 
# show the players output.

# Then create two Player objects (create a random value for each player’s health and power, 
# make is so that the maximum health value for a player is 200, and the maximum power value is 25) and call the fight method.

# class Player
#     def initialize(name , health, power)
#         @name = name
#         @health = health
#         @power = power
#     end

#     def alive?
#         return true if @health > 0
#         return false
#     end

#     def hit_impact(power)
#         @health -= power
#     end

#     def fight
#         while self.alive?
#             self.hit_impact(power)
#         end
#         puts "#{self} you lose!"
#     end
# end

# Bo = Player.new("Bo",100, 10)
# puts Bo.alive?


#     def initialize(name , health, power)
#         @name = name
#         @health = health
#         @power = power
#     end

#     def alive?
#         return true if @health > 0
#         return false
#     end

#     def hit_impact(power)
#         @health -= power
#     end

#     def fight
#         while self.alive?
#             self.hit_impact(power)
#         end
#         puts "#{self} you lose!"
#     end
# end

# Bo = Player.new("Bo",100, 10)
# puts Bo.alive?length
# def get_total_price(books)
#     base_price = 8
#     dis_price = base_price * books.uniq.length 
#     case books.uniq.length
#     when 2
#         dis_price *= 0.95
#     when 3
#         dis_price *= 0.9
#     when 4
#         dis_price *= 0.8
#     when 5
#         dis_price *= 0.75
#     end
#     return total_price = dis_price + base_price*(books.length - books.uniq.length)
# end
# cart = ['1st book','2nd book', '3rd book', '4th book', '4th book']
# puts "The total cost is EUR #{get_total_price(cart)}"
def get_change(cash,price)
    return cash - price if cash >= price
    puts "you do not have enough cash!"
end
  puts "please enter the given cash"
  cash_amount = gets.chomp.to_f
  puts "what is the price of the item?"
  item_price = gets.chomp.to_f
  
  change = get_change(cash_amount, item_price)
  
  puts "Thank you.Here is your change: $ #{change}"