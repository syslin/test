require "./lib/Todo_application.rb"
require "Database"
require "Todoapplication"
require "pry"
require "./lib/home.rb"
RSpec.describe TodoApplication do
  # it "has a version number" do
  #   expect(TodoApplication::VERSION).not_to be nil
  # end
  #Checks whether Database class is created or not
  it "create a class database" do
    database = Database.new
  #  binding.pry
    expect(database).to be_kind_of(Database)
  end
  # define a object so that it is executed when called
  let (:obj) {
    Database.new
  }
  let (:o) {
    Home.new
  }
  it "check the connectivity" do
    expect(obj.connectdb).to be true
  end
  # #checks wheter Database class responds to the add method
  # # it "add the data to database" do
  # #  expect(obj.insert('bday','cakke','hello','0')).to respond_to(:insert
  # # end
  # it "returns the  choice" do
  #   o = Home.new
  #   o.stub(:gets)
  #   expect(o.menu).to eq(1)
  # end
  # it 'insert data to database' do
  #   binding.pry
  #     d1=allow(obj.insert).to receive(:task_assigned){'cvmanager'}
  #     d2=allow(obj.insert).to receive(:task_done){'mail rcv'}
  #     d3=allow(obj.insert).to receive(:status){0}
  #     d4=allow(obj.insert).to receive(:notes){'cvmanager done by today'}
  #     expect(obj.insert(d1,d2,d3,d4)).to eq('cvmanager','mail rcv',0,'cvmanager done by today')
  # end

#   it "checks whether the user input the choice or not"
#   expect(Todoapplication::Home).to eq(1)
# end

context "when testing the insert class" do
  it "should say "
end

it "should add to the database" do
  binding.pry
  expect(affected_rows).to eql(1)
  expect (obj.insert).not_to raise_error(Mysql2::Error)
end
end
