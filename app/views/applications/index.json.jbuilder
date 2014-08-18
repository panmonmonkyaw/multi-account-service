json.array!(@applications) do |application|
  json.extract! application, :id, :no_of_application, :path
  json.url application_url(application, format: :json)
end
