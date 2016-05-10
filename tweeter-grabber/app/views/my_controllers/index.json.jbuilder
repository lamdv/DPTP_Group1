json.array!(@my_controllers) do |my_controller|
  json.extract! my_controller, :id
  json.url my_controller_url(my_controller, format: :json)
end
