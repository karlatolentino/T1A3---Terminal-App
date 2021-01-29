require 'json'
file = File.read('hair.json')
data_hash = JSON.parse(file)

print data_hash['advice'][10]