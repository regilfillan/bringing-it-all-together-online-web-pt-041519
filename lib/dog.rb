require 'pry'
require_relative "../config/environment.rb"

class Dog 
  attr_accessor :id, :name, :breed
  
  def initialize(id: nil, name:, breed:)
    @id= id
    @name= name 
    @breed= breed
  end
  
  def self.create_table
    sql= <<-SQL 
    CREATE TABLE IF NOT EXISTS dogs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT)
      SQL
      DB[:conn].execute(sql)
  end 
  
  def self.drop_table
    sql= "DROP TABLE IF EXISTS dogs"
    DB[:conn].execute(sql)
  end 
  
  def save
    if self.id
      self.update
    else
      sql= <<-SQL
        INSERT INTO dogs (name, breed)
        VALUES (?,?)
      SQL
      DB[:conn].execute()
      id= DB[:conn].execute()
  end 
  
  def self.create 
    
  end
  
  def self.find_by_id
    
  end 
  
  def self.find_or_create_by
    
  end 
  
  def self.new_from_db
    
  end 
  
  def self.find_by_name
    
  end 
  
  def update
    
  end
  
end 