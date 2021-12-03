#task - https://adventofcode.com/2021/day/3
require_relative "data.rb"

def power_consumption(data)
    gamma = ""
    epsilon = ""
    for i in 0..data[0].length-1
        counter = 0
        data.each do |report|
            counter +=1 if report[i]=="1"
            counter -=1 if report[i]=="0"
        end
        gamma += "1" and epsilon += "0" if counter > 0
        gamma += "0" and epsilon += "1" if counter < 0
    end
    return gamma.to_i(2)*epsilon.to_i(2)

end

data = getData

puts power_consumption(data)