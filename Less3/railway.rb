class Station
  attr_accessor :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

# Может принимать поезда (по одному за раз)
  def arrive(train)
    puts "Прибыл поезд №#{train.number}"
    @trains << train
  end

# Может показывать список всех поездов на станции, находящиеся в текущий момент
  def list_of_trains
    @trains.each do |train|
      puts "Поезд №'#{train.number}' в данный момент находится на станции '#{@name}'"
    end
  end

  def list_by_type(type)
    @trains.select{|train| train.type == type}
  end

# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
  def departure(train_number)
    @trains.delete_if {|train| train.number == train_number }
    puts "Поезд №'#{train_number.number}' отправляется..."
  end

end

class Route
  attr_reader :stations

  def initialize(from, to)
    @stations = [from, to]
  end

  # Может добавлять промежуточную станцию в список
  def add(station)
    @stations.insert(-2, station)
    puts "Добавлена промежуточная станция: #{station.name}"
  end

  # Может удалять промежуточную станцию из списка
  def delete(station)
    @stations.delete(station)
    puts "Промежуточная станция '#{station.name}' удалена из списка"
  end

  #Может выводить список всех станций по-порядку от начальной до конечной
  def list
    puts "Список всех станций:"
    @stations.each.with_index(1) do |station, index|
      puts "#{index}. #{station.name}"
    end
  end
end

class Train
  attr_accessor :quantity_carriage, :train_route, :number, :type

  def initialize(number, type, quantity_carriage)
    @number = number
    @type = type
    @quantity_carriage = quantity_carriage
    @speed = 0
  end

  # Может набирать скорость
  def speed_up(speed)
    @speed += speed
    puts "Поезд набрал скорость: #{speed}км/ч"
  end

  # Может возвращать текущую скорость
  def current_speed
    @speed
    puts "Текущая скорость: #{speed}км/ч"
  end

  # Может тормозить (сбрасывать скорость до нуля)
  def brake
    @speed = 0
    puts 'Поезд оставился'
  end

  # Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов).
  # Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
  def add_carriage
    if @speed == 0
      @quantity_carriage += 1
      puts "Прицеплен вагон №#{@quantity_carriage} "
    else
      puts 'Остановите поезд прежде чем прицеплять вагоны!'
    end
  end


  def remove_carriage
    if @speed == 0
      @quantity_carriage -= 1
      puts "Отцеплен вагон №#{@quantity_carriage}"
    else
      puts 'Остановите поезд прежде чем отцеплять вагоны!'
    end
  end

  # Может принимать маршрут следования (объект класса Route).
  # При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
  def add_route(route)
    self.train_route = route
    self.index_station = 0
  end

  # Может перемещаться между станциями, указанными в маршруте.
  # Перемещение возможно вперед и назад, но только на 1 станцию за раз.
  def forward

  end

  # Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
  def prev

  end

  def current_station

  end

  def next

  end

end