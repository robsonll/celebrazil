json.array!(@portions) do |portion|
  json.extract! portion, :id, :description
  json.url portion_url(portion, format: :json)
end
