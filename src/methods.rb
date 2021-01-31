# method for recording user input data for hair history

def random_tip
    require 'colorize'
    require 'json'
    file = File.read('hair.json')
    data_hash = JSON.parse(file)

    print "\n"
    print data_hash['advice'].sample.colorize(:red).bold
    print "\n"
    print "\n"
end

# method for obtaining recorded user input data from JSON file
def get_history
    require 'colorize'
    require 'json'
    file = File.read('hair.json')
    data_hash = JSON.parse(file)

    if data_hash['history'].empty?
            puts "No history recorded. Please choose another option.".colorize(:light_blue).bold
            print "\n"
        else
            print data_hash['history'].colorize(:red)
        end
end

