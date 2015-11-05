class AddressesController<ApplicationController

def new
  @address = Address.new
end

def create
  Address.create(
  city: params[:address][:city],
  street: params[:address][:street],
  zip: params[:address][:zip],
  state: params[:address][:state],
  addressebable_type: params[:address][:addressebable_type],
  )
end

end
