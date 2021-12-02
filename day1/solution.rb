# task - https://adventofcode.com/2021/day/1
require_relative "data.rb"

def depth_increase(arr)
    arr.map!(&:to_i)
    number_of_depth_increase = 0
    for i in 1..arr.length-1
        number_of_depth_increase+=1 if arr[i]>arr[i-1]
    end
    return number_of_depth_increase
end

data = getData

puts depth_increase(data)