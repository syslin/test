require "mysql2"
require "pry"

class Database
  def connectdb
    @c = Mysql2::Client.new(:host => "localhost", :username => "sanima1", :password => "San(*$(269833", :database => "todo_application")
    puts "connected"
    return true
  end

  def createtable
    @c.query("create table task(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,task_assigned varchar(255),task_done varchar(255),status int(2),notes varchar(255),Date datetime)")
    # db.execute
  end

  def insert(task_title, task_todo, notes, status)
    @c.query("insert into task (task_assigned,task_done,notes,status,date) values ('#{task_title}','#{task_todo}','#{notes}','#{status}',now())")
  end

  def display_list
    sql = @c.query("Select task_done from task")
    sql.each do |row|
      puts row
    end
  end

  def display
    sql = @c.query("Select task_assigned,task_done,notes from task")
    sql.each do |row|
      puts row
    end
  end

  def delete_data(id)
    @c.query("Delete from task where id=#{id}")
  end

  def edit(id, columns = {})
    #binding.pry
    str = []
    columns.each { |k, v| str << "#{k} = \'#{v}\'" }
    str = str.join("")
    @c.query("update task set #{str} where id=#{id} ")
  end

  def filter(date)
    @c.query("select * from ")
  end

  def sort
    sql = @c.query("select * from task order by date desc")
    sql.each do |row|
      puts row
    end
  end

  def display_completedtask
    sql = @c.query("Select * from task where status=1")
    sql.each do |row|
      puts row
    end
  end

  def closedb
    @c.close
  end
end

# obj1= Database.new
# obj1.connectdb
# #obj1.createtable
# #obj1.insert
#obj1.edit(5,{:status=>1})
# obj1.edit(5,{:status=>1,:task_assigned=>"make new application"})
# #obj1.edit(5,[status,1,task_assigned,"make new application"])
# #obj1.edit(5,{:status=>1})
# #obj1.display
# #obj1.delete_data(1)
# #obj1.closedb
