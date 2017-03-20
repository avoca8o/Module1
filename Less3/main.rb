load 'railway.rb'

train1 = Train.new(500, 'Грузовой', 12)
train2 = Train.new(192, 'Грузовой', 15)
train3 = Train.new(113, 'Пассажирский', 7)
train4 = Train.new(666, 'Пассажирский', 13)
train5 = Train.new(205, 'Пассажирский', 21)
train6 = Train.new(422, 'Пассажирский', 24)

station1 = Station.new('Москва')
station2 = Station.new('Санкт-Петербург')
station3 = Station.new('Тверь')
station4 = Station.new('Окуловка')
station5 = Station.new('Малая Вишера')

station1.arrive(train1)
station1.arrive(train2)
station1.arrive(train3)
station2.arrive(train4)
station2.arrive(train5)
station2.arrive(train6)

station1.trains
p station1.list_by_type('Пассажирский').size
p station2.list_by_type('Пассажирский').size
p station1.list_by_type('Пассажирский').size
p station2.list_by_type('Грузовой').size
p station1.list_by_type('Грузовой').size
p station2.list_by_type('Грузовой').size

station1.departure(train1)

route1 = Route.new(station1, station3)
route2 = Route.new(station1, station2)
route3 = Route.new(station1, station5)
route4 = Route.new(station2, station1)

route1.add(station3)
route1.add(station4)
route1.add(station5)
route1.stations
route1.delete(station5)
route1.stations

train1.speed_up(100)
train1.current_speed
train1.brake

train1.remove_carriage
train1.remove_carriage
train1.remove_carriage

train1.add_route(route1)
train1.forward

train1.current_station
train1.forward
train1.forward
train1.forward


