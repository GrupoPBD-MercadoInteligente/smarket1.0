json.array!(@provincia_units) do |provincia_unit|
  json.extract! provincia_unit, :provincia_id, :provincia_nombre
  json.url provincia_unit_url(provincia_unit, format: :json)
end
