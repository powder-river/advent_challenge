require './challenges/day_6.rb'
challenge_input = @challenge_input


def clean_input(ci)
    data_list = []
    data = ci.split("\n")
    data.each do |n|
        points = n.scan(/\d+,\d+/)
        if n.match(/on/)
          action = "on"
        elsif n.match(/off/)
          action = "off"
        elsif n.match(/toggle/)
          action = "toggle"
        else
          print "ERROR ERROR ERROR ERROR ERROR"
        end
        final_hash = {"action" => action, "start" => points[0], "end" => points[1]}
        data_list << final_hash
    end
    data_list
end


def create_grid
    grid = {}
    x = 0
    y = 0
    while x < 1000
      while y < 1000
        grid["Point: #{x},#{y}"] = {"status" => "off", "x" => x, "y" => y }
        y += 1
      end
      x += 1

    end

    grid
end

grid = create_grid
# puts grid
puts grid["Point: 0,0"]['status']



# def main(instructions)
# end
