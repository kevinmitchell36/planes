json.array! @planes.each do |plane|
  json.id plane.id
  json.model plane.model
  json.capacity plane.capacity
  json.engines plane.engines
  json.size plane.size
end
