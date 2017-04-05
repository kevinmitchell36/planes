json.id plane.id
json.model plane.model
json.capacity plane.capacity 
if plane.engines == "8"
  json.engines plane.engines + "(that's a lot of engines!)"
else
  json.engines plane.engines
end

json.size plane.size
