require 'pry'
#Before do
 # execute before
#end

#After do
  # execute after
#end

Before '@site' do
 # visit 
end

Before '@api' do
 @env_api_response = HTTParty.get("https://swapi.co/api/films/")
end

After '@site' do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
    if scenario.failed?
      tirar_foto(scenario_name.downcase!, 'falhou')
    else
      tirar_foto(scenario_name.downcase!, 'passou')
    end
end