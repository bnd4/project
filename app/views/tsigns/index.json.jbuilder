json.array!(@tsigns) do |tsign|
  json.extract! tsign, :id, :signature
  json.url tsign_url(tsign, format: :json)
end
