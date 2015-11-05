class TicketsController<ApplicationController

  def create
    Ticket.create(
    user_id: current_user.id,
    event_id: params[:event_id]
    )
    redirect_to :back
end
