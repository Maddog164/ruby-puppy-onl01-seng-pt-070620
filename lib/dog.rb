# Add your code here
require 'pry'
class Dog

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    print_list = []
    print_list = @@all.map(&:name).join("\n")
    print print_list + "\n"
  end

  def self.save
    @@all << self.name
  end

  def self.clear_all
    @@all.clear
  end

end
