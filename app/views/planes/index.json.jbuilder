json.array! @planes.each do |plane|
  json patial! 'plane.json.jbuilder', plane: plane 
end
