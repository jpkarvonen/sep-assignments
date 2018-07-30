def nearest(cities_graph, current_city)
  while current_city.visited == false
    neighbor_cities = current_city.neighbors
    next_city = neighbor_cities[0]

    neighbor_cities.each do |current_neighbor|
      if current_neighbor.distance < next_city.distance
        next_city = current_neighbor
      end
    end

    current_city.visited = true
    current_city = next_city
  end
end
