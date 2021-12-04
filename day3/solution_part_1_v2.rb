#task - https://adventofcode.com/2021/day/3
require_relative "data.rb"

def power_consumption(data)
    arr = []
    for i in 0..data.size-1
        arr << data[i].split(//)
    end
    common_bits = [0] * arr[0].size

    for i in 0..arr.size-1
        for j in 0..arr[0].size-1
            common_bits[j]+=1 if arr[i][j]=="1"
            common_bits[j]-=1 if arr[i][j]=="0"
        end
    end
    gamma = ''
    epsilon = ''
    common_bits.each do |value|
        gamma += "1" and epsilon+="0" if value >0
        gamma += "0" and epsilon+="1" if value <0

    end
    return gamma.to_i(2)*epsilon.to_i(2)
end

data = getData
puts power_consumption


