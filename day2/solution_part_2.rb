#task - https://adventofcode.com/2021/day/2#part2
require_relative "data.rb"
class Submarine
    attr_accessor :horizontal_position, :depth
    def initialize
        @horizontal_position = 0
        @depth = 0
        @aim = 0
    end

    def change_position(instruction)
        instruction = instruction.split()
        case instruction[0]
        when 'forward'
            @horizontal_position += instruction[1].to_i
            @depth += @aim*instruction[1].to_i
        when 'down'
            @aim += instruction[1].to_i
        when 'up'
            @aim -= instruction[1].to_i
        end
    end

    def multiplay_position
        return @horizontal_position * @depth
    end
    
end

#get input from file data.rb
data = getData
sub = Submarine.new

data.each do |inst|
    sub.change_position(inst)
end

puts sub.multiplay_position