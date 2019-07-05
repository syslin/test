require_relative "../lib/Database.rb"

$obj = Database.new
$obj.connectdb

class Home
  def menu
    puts "Welcome to TODO application"
    puts "Choose what you want to do\n 1:To create new Task \n 2:To View the TASK\n5:Home"
    user_choice
  end

  def user_choice
    choice = gets.chomp.to_i
    case (choice)
    when 1
      $user_data.menu
    when 2
      puts "view details"
      $obj.display
      puts "enter you choice \n1:Edit\n2:Delete\n3:View Completed task\n4:Sort\n5:Add Notes \n6:Display_list"
      option = gets.chomp.to_i
      until option == 0
        case (option)
        when 1
          puts "enter the id you want to edit"
          id = gets.chomp.to_i
          puts "enter the column name you want to update"
          col = gets.chomp
          puts "enter the  new value "
          val = gets.chomp
          column_name = { col => val }
          $obj.edit(id, column_name)
        when 2
          puts "enter the id yoou want to delete"
          id = gets.to_i
          $obj.delete_data(id)
        when 3
          puts "view done task"
          $obj.display_completedtask
        when 4
          puts "filter"
          $obj.sort
        end
      end
    when 0
      puts "go to home"
    end
  end
end

h = Home.new
h.menu
