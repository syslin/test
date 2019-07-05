module  Todoapplication
    def Home
        puts "Welcome to TODO application"
        puts "Choose what you want to do\n 1:To create Task \n 2:To View the TASK\n"
        choice=gets.chomp.to_i;
    end
end