class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train)
    @trains << train
  end

  def list_by_type(type)
    @trains.select{|train| train.type == type}
  end

  def departure(train_number)
    @trains.delete_if {|train| train.number == train_number }
  end

end

class Route
  attr_reader :stations

  def initialize(from, to)
    @stations = [from, to]
  end

  def add(station)
    @stations.insert(-2, station)
  end

  def delete(station)
    @stations.delete(station) if station != @stations.first && station != @stations.last
  end
end

class Train
  attr_reader :quantity_carriage, :number, :type, :speed

  def initialize(number, type, quantity_carriage)
    @number = number
    @type = type
    @quantity_carriage = quantity_carriage
    @speed = 0
  end

  def speed_up(speed)
    @speed += speed
  end

  def brake
    @speed = 0
  end

  def add_carriage
    @quantity_carriage += 1 if @speed == 0
  end

  def remove_carriage
    @quantity_carriage -= 1 if @speed == 0 && @quantity_carriage > 0
  end

  def add_route(route)
    @route = route
    @index_station = 0
  end

  def forward
    @index_station += 1 if @route.stations[@index_station + 1]
  end

  def back
    @index_station -= 1 if @index_station > 0
  end

  def current_station
    @route.stations[@index_station] if @route
  end

  def next
    @route.stations[@index_station + 1] if @index_station < @route.stations.size - 1
  end

  def prev
    @route.stations[@index_station - 1] if @index_station > 0
  end
end
