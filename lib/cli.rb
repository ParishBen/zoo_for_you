class ZooForYou::CLI

def start
    introduction
    get_zoo_data
    main_loop
end

def introduction
    puts "\n\n"
    puts "Welcome to the ZooView!\n We're going to get you all the fine details of th eZoo that interests you."
    puts "\n\n"
end

def display_zoo_list
   zoo= ZooForYou::Zoo.all
   zoo.each.with_index(1) do |zoo, index|
    puts "#{index}. #{zoo.name}"
   end
end

def main_loop
    loop do 
        menu
        input= zoo_choice
    end
    "in loop"
end

def menu 
    display_zoo_list
    display_instructoins
end

def zoo_choice
    input = gets.strip.downcase
    return input if input == "exit"
    if input.to_i.between?(1, ZooForYou::Zoo.all.length)
    else puts "Sorry, please choose a Zoo between 1 and #{ZooForYou::Zoo.all.length}"
        
    end
end

end



