module DeployShips

  def direction
    ['horizontal','vertical'].sample
  end

  def select_a_key
    keys = []
    ("A".."J").to_a.each {|a| (1..10).to_a.each {|n| keys << "#{a}#{n}"}}
    keys.sample
  end

  def check_row_space(ship,key)
    row = key[0]
    col = key.slice(1..-1)
    col.to_i < 10-ship.size ? true : false
  end

  def place_on_row(ship)
    key = select_a_key
    check_row_space(ship,key)

  end



end