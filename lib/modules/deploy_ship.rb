module DeployShip

  def direction
    ['horizontal','vertical'].sample
  end

  def select_a_key
    keys = []
    ("A".."J").to_a.each {|a| (1..10).to_a.each {|n| keys << "#{a}#{n}"}}
    keys.sample
  end

  def place_on_row(ship)
    key = select_a_key
    row = key[0]
    col = key.slice(1..key.length).to_i
    if col > 10 - ship.size
      place_on_row(ship)
    else
      location = []
      (ship.size).times do
        location << "#{row}#{col}"
        col = col.next
      end
      location
    end 
  end

  def place_on_column(ship)
    key = select_a_key
    row = key[0]
    col = key.slice(1..key.length).to_i
    if row.ord > 74 - ship.size
      place_on_column(ship)
    else
      location = []
      (ship.size).times do
        location << "#{row}#{col}"
        row = row.next
      end
      location
    end 
  end

  def position_ship(ship)
    direction == 'vertical' ? place_on_column(ship) : place_on_row(ship)
  end

end