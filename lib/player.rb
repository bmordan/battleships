class Player

  attr_accessor :enemy
  attr_accessor :name

  def initialize(options = {})
    @name = options.fetch( :name, @name = "Other" )
  end
  
  def take_shot(coordinate)
    raise "given me a fkin coordinate!" if coordinate.nil?
    coordinategit
  end

  def ships
    @ships ||= []
  end

  def grid
    @grid ||= {}
  end

  def show_grid
    show_this = ''
  end

end
