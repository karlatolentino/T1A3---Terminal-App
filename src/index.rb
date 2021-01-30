# INPUT: Menu choice, hair questionnaire, record hair history, loop to go back to menu, prompt to quit
# DATA: history of haircuts, date, style
# OUTPUT: suggested haircut style, recommended next haircut appointment

# GEM FILES

require "tty-prompt"

prompt = TTY::Prompt.new(active_color: :cyan)

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
           "View history",
           "💡 Generate random hair advice",
           "❌ Exit"
       ])
    system 'clear'
   if choice == "💈 Give me a new hairstyle!"
        
   elsif choice == "📂 Record last haircut" 
        prompt1 = "> "
    
        puts "When did you last cut your hair? day/month/year"
        date = gets.chomp.to_s
        
        puts "What was the length of your haircut in millimeters?"
        length = gets.chomp.to_i
        
        puts "Did you use clippers? Type \'yes' or 'no\'"
        while clipper = gets.chomp.to_s
            case clipper
            when 'yes' 
                puts "What guard number did you use on the clippers? Enter between 0 to 5"
                clipper = gets.chomp.to_f
                break
            when 'no'
                clipper = "none"
                break
            else
                puts "Invalid input. Please enter \'yes' or 'no\'."
                print prompt1
            end
        end

        puts "How did you style your hair?"
        style = gets.chomp.to_s

        puts "Did you use product? Type \'yes' or 'no\'"
        while product = gets.chomp.to_s
            case product    
            when 'yes'
                puts "What product did you use?"
                product = gets.chomp.to_s
                break
            when 'no'
                product = "none"
                break
            else 
            puts "Invalid input. Please enter \'yes' or 'no\'."
            print prompt1
            end
        end

        puts "Please add any additional notes to your experience"
        notes = gets.chomp.to_s
        
        print "\n"

        puts "Last appointment date: #{date}
        Hair length: #{length}mm
        Clipper no.: #{clipper}
        Style: #{style}
        Product: #{product}
        Notes: #{notes}".colorize(:light_blue)

        data_hash['history'] << "Last appointment date: #{date}
        Hair length: #{length}mm
        Clipper no.: #{clipper}
        Style: #{style}
        Product: #{product}
        Notes: #{notes}"
        File.write('hair.json', JSON.dump(data_hash))

   elsif choice == "View history"
        print history
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