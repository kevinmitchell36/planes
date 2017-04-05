json.array! @planes.each do |plane|
  json.partial! 'planes.json.jbuilder', plane: plane 
end

