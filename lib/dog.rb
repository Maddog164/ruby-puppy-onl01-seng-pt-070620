# Add your code here
require 'pry'
class Dog

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    #@@all << self
    self.class.save(@name)
    binding.pry
  end

  def self.all
    @@all
  end

  def self.print_all
    print_list = []
    print_list = @@all.map(&:name).join("\n")
    print print_list + "\n"
  end

  def self.save(name)
    binding.pry
    @@all << name
    #@@all << self.instance_variable_get(:@name)
    #@@all << instance_variable_get(@name)
  end

  def self.clear_all
    @@all.clear
  end

end
