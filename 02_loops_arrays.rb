# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence
time_to_class = 0.5
puts "it took me #{time_to_class} hours to get to class "

# you are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour

puts "what would you like to drink? (cocktail? water? beer?)"

drink_menu = [ 'cocktail', 'water', 'beer']
quantity = [3, 2, 6]

order = gets.chomp

case order
    when "cocktail"
        quantity[0] += 1
    when "water" 
        quantity[1] += 1
    when "beer"
        quantity[2] += 1
    when "done"
        
    else
        puts "sorry we dont have that in our menu"
end


# print the final drinks order so you know what to make

for i in 0..2 do 
    puts "#{drink_menu[i]}  #{quantity[i]}"
end

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

price = [22, 12, 6]
cost = [8, 3, 0.15]

# print out the total profit for the orders you have

total_profit = 0
for i in 0...price.length
    total_profit += (price[i]-cost[i])*quantity[i]
end

puts "Total profit = $#{total_profit}"