# Add your code here
require 'pry'
class Dog

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    #@@all << self
    self.save
    #binding.pry
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end

  def save
    #binding.pry
    @@all << self
    #@@all << self.instance_variable_get(:@name)
    #@@all << instance_variable_get(@name)
  end

  def self.clear_all
    @@all.clear
  end

end
