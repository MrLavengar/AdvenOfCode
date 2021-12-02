# task - https://adventofcode.com/2021/day/1#part2
require_relative "data.rb"

def depth_increase(arr)
    number_of_depth_increase = 0
    arr.map!(&:to_i)
    for i in 3..arr.length-1
        three_measurement_is_bigger = arr[i-3]+arr[i-2]+arr[i-1]<arr[i-2]+arr[i-1]+arr[i]
        number_of_depth_increase+=1 if three_measurement_is_bigger
    end
    return number_of_depth_increase
end

data = getData

puts depth_increase(data)