# EXERCISE 0
# Arrays
fave_colours_strings = ["red", "green", "blue"]
family_ages = [70, 61, 38, 36, 33]
coin_flips = ["heads", "heads", "tails", "tails", "tails"]
fave_artists = ["Spinal Tap", "Anvil", "Orion"]
fave_colours_symbols = [:red, :green, :blue]
# Hashes
words = {
  :paper => "flattened skinny wood pulp",
  :candy => "popular edible sugar",
  :porch => "a place for sitting"
}
movies = {
  :Jaws => 1975,
  :Rocky => 1976,
  :UHF => 1989
}
cities = {
  :Toronto => 2731571,
  :Halifax => 403131,
  :Calgary => 1214839
}
family = {
  :Scott => 33,
  :Shaun => 36,
  :Mike => 38,
  :Mom => 61,
  :Dad => 70
}

# EXERCISE 1
# Print out the array of coin flips.
puts coin_flips
# Print out the first element of the array of your favourite colours.
puts fave_colours_strings[1] #task 2
# Output the sorted version of the array of your friends and family members' ages.
puts family_ages.sort
# Add a new baby (0 years old) to the array of your family's ages.
family_ages << 0
# Using the hash of movie information, access and print the year of one of the movies.
puts movies[:Jaws]

# EXERCISE 2
# Print out the last element of the array of your favourite colours.
#     Note: this should work for an array of any size!
puts fave_colours_strings[-1]
# Add a new city to the hash of cities and population.
cities[:Schreiber] = 500
puts cities
# Reverse the array of coin flips and save it.
coin_flips = coin_flips.reverse
puts coin_flips
# Print out the population of one of the cities.
puts "The population of Toronto is #{cities[:Toronto]}."
# Print out a sentence about each item in the array of performing artists. For example:
#     I think Pearl Jam is great.
#     I think Lady Gaga is great.
#     I think Pink Floyd is great.
fave_artists.each do |artist|
  puts "I think #{artist} had a fun documentary!"
end

# EXERCISE 3
# Print out the first two performing artists in that array.
puts fave_artists[1,2]
# For each of your favourite movies, print out a sentence about when the movie was released. For example:
#     Avatar came out in 2009.
#     Mean Girls came out in 2004.
#     The Matrix came out in 1999.
movies.each do |title,year|
  puts "#{title} came out in #{year}."
end
# Sort and reverse the array of ages of your family.
# Save it and print it to the screen.
# See if you can sort and reverse the array on one line!
family_ages = family_ages.sort
family_ages = family_ages.reverse
puts family_ages
# Add "Beauty and the Beast" movie to your hash of movies information,
# but with a twist:
# the movie was released both in 1991 and in 2017.
# Print it out.
movies[:"Beauty and the Beast"] = 1991,2017
puts movies

# EXERCISE 4
# Print out all of the ages of your friends/family that are less than 30 (or any number where some ages will not be printed!).
sons = family_ages.select { |ages| ages < 40 }
puts "People under 40 in our family are aged..."
puts sons
# Find and output the age of the oldest person in your friends/family array.
puts "The oldest person in our family is aged..."
puts family_ages.max
# Count how many times you flipped 'heads' using the coin flips array.
puts "The amount of Heads-flips in the coin-toss was #{coin_flips.count("heads")}"
# You realize one of the performing artists in your list is no longer a favourite. Remove one of them from the array.
fave_artists.delete("Anvil")
puts fave_artists
# Pick a city in your city population hash and change its population.
cities[:Schreiber] = 123456789
puts cities

# EXERCISE 5
# Find the sum total of the population in the hash of cities.
sum = cities.inject(0) { |sum, tuple| sum += tuple[1] }
puts "Total population of cities is #{sum}."
# Using your hash containing the names of your family and friends with their ages, print out one of two messages for each depending on their age. For example:
#     Martha is old.
#     Stewart is young.
#     Holly is young.
family.each do |name,age|
  if age < 40
      puts "#{name} is young."
    else
      puts "#{name} is old."
  end
end
# Print out the last two colours in your array of favourite colours.
puts "Last two colours are #{fave_colours_strings[-2]} and #{fave_colours_strings[-1]}."
# Increase by 1 the age of everyone in your array of ages. Print it out.
family_ages.each do |new_age|
  puts "Updated age is #{new_age+1}"
end
# Add two new colours to your array of favourite colours.
fave_colours_strings << "purple"
fave_colours_strings << "yellow"
puts fave_colours_strings

# EXERCISE 6A
# Make a new hash that contains a list of movies for each year. Each list of movies should be an array. Below is some data you can use.
    # 1999: The Matrix, Star Wars: Episode 1, The Mummy
    # 2009: Avatar, Star Trek, District 9
    # 2019: How to Train Your Dragon 3, Toy Story 4, Star Wars: Episode 9
blockbusters = {
  1999 => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
  2009 => ["Avatar", "Star Trek", "District 9"],
  2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
}
puts blockbusters

# Make a new array that contains each row of the buttons on a phone. Each row should be an array.
    #The rows on a phone are: 1 2 3, 4 5 6, 7 8 9, * 0 #
telephone = [
  bottom_row = ["*", 0, "#"],
  lower_row = [1, 2, 3],
  upper_row = [4, 5, 6],
  top_row = [7, 8, 9]
]
puts telephone

#Make a new array that contains information about three countries. Each country should be a hash that has a name, a continent, and whether or not it is an island.

countries = [
  canada = {
    :name => "Canada",
    :continent => "North America",
    :island => false
  },
  usa = {
    :name => "United States",
    :continent => "North America",
    :island => false
  },
  iceland = {
    :name => "Iceland",
    :continent => "Europe",
    :island => true
  },
]
puts countries
