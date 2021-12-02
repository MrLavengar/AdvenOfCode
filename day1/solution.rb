# task - https://adventofcode.com/2021/day/1
# task - https://adventofcode.com/2021/day/1#part2
require_relative "data.rb"

#part1
def depth_increase(arr)
    arr.map!(&:to_i)
    number_of_depth_increase = 0
    for i in 1..arr.length-1
        number_of_depth_increase+=1 if arr[i]>arr[i-1]
    end
    return number_of_depth_increase
end

#part2
def depth_increase2(arr)
    number_of_depth_increase = 0
    arr.map!(&:to_i)
    for i in 3..arr.length-1
        three_measurement_is_bigger = arr[i-3]+arr[i-2]+arr[i-1]<arr[i-2]+arr[i-1]+arr[i]
        number_of_depth_increase+=1 if three_measurement_is_bigger
    end
    return number_of_depth_increase
end

data = getData

puts depth_increase2(data)