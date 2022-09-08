class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do

       "Ride and Mind"

  end
  get '/drivers' do
    drivers = Driver.all
    drivers.to_json(only: [:id, :name, :licence_number])
  end

  get '/garages' do
    garages = Garage.all
    garages.to_json(only: [:id, :name, :location, :mechanic, :certification_number])
  end

  get '/vehicles' do
    vehicles = Vehicle.all
    vehicles.to_json(only: [:id, :vehicle_registration, :model, :manufacture_year, :last_service, :next_service, :catalytic_converter, :vehicle_insurance, :driver_id, :garage_id])
  end

  get '/drivers/:id' do
    driver = Driver.find(params[:id])
    driver.to_json(only: [:id, :name, :licence_number])
  end

  get '/garages/:id' do
    garage = Garage.find(params[:id])
    garage.to_json(only: [:id, :name, :location, :mechanic, :certification_number],)
  end

  get '/vehicles/:id' do
    vehicle = Vehicle.find(params[:id])
  vehicle.to_json(only: [:id, :vehicle_registration, :model, :manufacture_year, :last_service, :next_service, :catalytic_converter, :vehicle_insurance, :driver_id, :garage_id], include: {driver: {only: [:name, :licence_number]}, garage: {only:[:name, :certification_number]}})
  end

  get '/vehicles/edit/:id' do
    vehicle = Vehicle.find(params[:id])
    vehicle.to_json(only: [:vehicle_registration, :last_service, :next_service, :catalytic_converter])
  end

  post '/drivers' do
    update = Driver.create(
      name: params[:name],
      licence_number: params[:licence_number]
    )
    update.to_json
  end

  post '/garages' do
    update = Garage.create(
      name: params[:name],
      location: params[:location],
      mechanic: params[:mechanic],
      certification_number: params[:certification_number]

    )
    update.to_json
  end

  post '/vehicles' do
    update = Vehicle.create(
      vehicle_registration: params[:vehicle_registration],
      model: params[:model],
      manufacture_year: params[:manufacture_year],
      last_service: params[:last_service],
      next_service: params[:next_service],
      catalytic_converter: params[:catalytic_converter],
      vehicle_insurance: params[:vehicle_insurance],
      driver_id: params[:driver_id],
      garage_id:params[:garage_id]

    )
    update.to_json
  end
  put '/drivers/:id' do
    dataupdate = Driver.find(params[:id])
    dataupdate.update(
      name: params[:name],
      licence_number: params[:licence_number]
    )
    dataupdate.to_json
  end

  put '/garages/:id' do
    database = Garage.find(params[:id])
    database.update(
      name: params[:name],
      location: params[:location],
      mechanic: params[:mechanic],
      certification_number: params[:certification_number]
    )
  end

  put '/vehicles/:id' do
    dataupdate= Vehicle.find(params[:id])
    dataupdate.update(
      vehicle_registration: params[:vehicle_registration],
      model: params[:model],
      manufacture_year: params[:manufacture_year],
      last_service: params[:last_service],
      next_service: params[:next_service],
      catalytic_converter: params[:catalytic_converter],
      vehicle_insurance: params[:vehicle_insurance],
      driver_id: params[:driver_id],
      garage_id:params[:garage_id]

    )
    dataupdate.to_json
  end
  patch '/drivers/:id' do
    dataupdate = Driver.find(params[:id])
    dataupdate.update(
      name: params[:name]
    )
    dataupdate.to_json
  end


  patch '/garages/:id' do
    database = Garage.find(params[:id])
    database.update(
      mechanic: params[:mechanic]
    )
  end

  patch '/vehicles/:id' do
    dataupdate= Vehicle.find(params[:id])
    dataupdate.update(
      last_service: params[:last_service],
      next_service: params[:next_service],
      catalytic_converter: params[:catalytic_converter]

    )
    dataupdate.to_json
  end
  delete '/vehicles/:id' do
    remove = Vehicle.find(params[:id])
    remove.destroy
    remove.to_json
  end

  delete '/garages/:id' do
    remove = Garage.find(params[:id])
    remove.destroy
    remove.to_json
  end

  delete '/drivers/:id' do
    remove = Driver.find(params[:id])
    remove.destroy
    remove.to_json
  end

end
