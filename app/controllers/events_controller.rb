class EventsController<ApplicationController

def index
  if current_user
  @events = Event.where(owner_id: current_user.id)
  @aevents = Event.where(ticket_id: current_user.tickets)
end
end

def new
  if current_user.admin
    @event = Event.new

  else
    redirect_to "/"
  end
end

def show
  @event = Event.find(params[:id])
end

def create
  e = Event.create(
  event_name: params[:event][:event_name],
  owner_id: current_user.id,
  price_in_cents: (params[:event][:price_in_cents].to_i * 100).to_s ,
  start_time: params[:event][:start_time],
  end_time: params[:event][:start_time]
  )

  Address.create(
  street: params[:address][:street],
  state: params[:address][:state],
  city: params[:address][:city],
  zip: params[:address][:zip],
  addressebable_id: e.id,
  addressebable_type: "Event"
  )
  redirect_to "/", notice: "Event created"
end

def edit
  @event = Event.find(params[:id])
end

def update
  Event.find(params[:id]).update(
  event_name: params[:event][:event_name],
  owner_id: current_user.id,
  price_in_cents: (params[:event][:price_in_cents].to_i * 100).to_s ,
  start_time: params[:event][:start_time],
  end_time: params[:event][:start_time]
  )
  redirect_to "/", notice: "Event changed"
end


def search
  @results = Event.search_all params[:q]
end
end
