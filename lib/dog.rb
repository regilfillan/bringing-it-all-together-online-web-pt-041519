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
    sql= <<- SQL 
    CREATE TABLE IF NOT EXIST
  end 
  
  def self.drop_table
    
  end 
  
  def save
    
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