require 'Database'
class Menu
  def create_new
    puts "enter the task title"
    task_title = gets.chomp
    done = "n"
    task_todo = Array.new
    until done != "n"
      puts "enter the task to do \n"
      task_todo << gets.chomp
      td = task_todo.join(",")
      puts "Are you done"
      done = gets.chomp.downcase
    end
    puts "enter the notes"
    notes = gets.chomp
    puts "enter the status"
    status = gets.chomp.to_i
    #puts "enter the date for completetion"
    #date_complete=gets.chomp
    $obj.insert(task_title, td, notes, status)
  end
  
end
