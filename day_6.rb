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
    while x < 1000
      (0..999).each do |n|
        grid["Point: #{x},#{n}"] = {"status" => "off", "x" => x, "y" => n }
      end
      x += 1
    end
    grid
end


def switch(action, status)
  if action == "on"
    return "on"
  elsif action == "off"
    return "off"
  elsif action == "toggle" && status == "off"
    return "on"
  elsif action =="toggle" && status == "on"
    return "off"
  end
end


def grid_operation(grid,instructions)
  instructions.each do |i|
    start = i["start"].split[","]
    finish = i["end"].split[","]
    action = i["action"]

    x = start[0]
    while x < finish[0]
      (start[1]..finish[1]).each do |n|
        grid_status = grid["Point: #{x},#{n}"]["status"]
        new_status = switch(action,grid_status)
        grid["Point: #{x},#{n}"]["status"] = new_status
      end
      x += 1
    end
  end
end

grid = create_grid
inst = clean_input(challenge_input)
grid_operation(grid,inst)
