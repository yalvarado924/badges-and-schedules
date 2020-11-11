def badge_maker(name)
       "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.map do |name| 
        badge_maker(name)
    end
end

def assign_rooms(speakers)
    new_array = []
    speakers.each_with_index do |name, i|
        new_array << "Hello, #{name}! You'll be assigned to room #{i+ 1}!"
    end
    new_array
end

def printer(attendees)
    batch_badge_creator(attendees).each do |batch|
        puts batch
    end
    assign_rooms(attendees).each do |rooms|
        puts rooms
    end
end
