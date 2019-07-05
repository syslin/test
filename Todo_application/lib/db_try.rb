require 'mysql2'
begin
c = Mysql2::Client.new(:host => "localhost",:username => "sanima1",:password => "San(*$(269833",:database => "todo_application")
#client.query("create table todo(id int(2),task varchar(255))")
c.query("insert into todo (id,task) values (7,'hell1')")
sql = c.query("Select * from todo where id=5")
sql.each do |x|
  puts x
end
#con = Mysql.new 'localhost','sanima1','San(*$(269833'
#con.query("create table todo(id int primarykey,task varchar(255))")

rescue Mysql2::Error => Error
puts Error

ensure
c.close

end