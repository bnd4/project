json.array!(@theads) do |thead|
  json.extract! thead, :id, :head
  json.url thead_url(thead, format: :json)
end
