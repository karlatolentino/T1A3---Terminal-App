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
