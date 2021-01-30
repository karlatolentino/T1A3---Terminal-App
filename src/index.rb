# INPUT: Menu choice, hair questionnaire, record hair history, loop to go back to menu, prompt to quit
# DATA: history of haircuts, date, style
# OUTPUT: suggested haircut style, recommended next haircut appointment

# GEM FILES

require "tty-prompt"

prompt = TTY::Prompt.new

require 'json'
file = File.read('hair.json')
data_hash = JSON.parse(file)

require 'colorize'

require 'artii'
a = Artii::Base.new

# FILE PATH

require_relative('methods.rb')

# MENU OPTIONS
puts a.asciify('Barber\'s Paradise')
puts "🌴 Welcome to Barber's Paradise! 🌴".colorize(:light_blue).on_white.bold
print "\n"
puts "A place where the client and barber can enjoy a smooth-sailing experience with less fuss and more relaxation by cutting out the fluff!".colorize(:light_red)

while true
   choice = prompt.select(
       "Take a seat and choose from the options below:", 
       [
           "💈 Give me a new hairstyle!",
           "📂 Record last haircut",
           "💡 Generate random hair advice",
           "❌ Exit"
       ])
    
   if choice == "💈 Give me a new hairstyle!"

   elsif choice == "📂 Record last haircut"
        get_hair
   elsif choice == "💡 Generate random hair advice"
        print "\n"
        print data_hash['advice'].sample.colorize(:red).bold
        print "\n"
        print "\n"
   elsif choice == "❌ Exit"
        print "\n"
        puts "See you at your next appointment!".colorize(:white).on_light_blue.bold
        exit
   else 
        puts "Invalid choice"
   end
end