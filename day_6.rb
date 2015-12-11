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
        elsif
          action = "toggle"
        else
          print "ERROR ERROR ERROR ERROR ERROR"
        end
        final_hash = {"action" => action, "start" => points[0], "end" => points[1]}
        data_list << final_hash
    end
    data_list
end

potato = clean_input(challenge_input)
# puts challenge_input
grape = "turn off 341,304 through 638,850"
grape = grape.scan(/\d+,\d+/)
puts grape[0]
