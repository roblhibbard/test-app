class TicketsController < ApplicationController
  before_action :set_customer
  before_action :set_ticket, only: [ :show, :edit, :update, :destroy ]

  def new
    @ticket = @customer.tickets.build
    1.times { @ticket.items.build } 
  end

  def create
    @ticket = @customer.tickets.build(ticket_params)
    if @ticket.save
      flash[:notice] = "Ticket created!"
      redirect_to [@customer, @ticket]
    else
      flash[:alert] = "Ticket has not been created."
      render action: 'new'
    end
  end

  def show
    @item = @ticket.items.build
  end
  
  def edit
  end

  def update
    if @ticket.update(ticket_params)
      flash[:notice] = "Ticket updated!"
      redirect_to [@customer, @ticket]
    else
      flash[:alert] = "Ticket has not been updated."
      render action: 'edit'
    end
  end

  def destroy
    @ticket.destroy
    flash[:notice] = "Ticket destroyed."
    redirect_to @customer
  end


  private
    def set_customer
    @customer = Customer.find( params[:customer_id] )
  end
 
  def set_ticket
    @ticket = @customer.tickets.find( params[:id] )
  end

  def ticket_params
    params.require(:ticket).permit( :service, :description, :state_id, 
                                   items_attributes: [:id, :make, :model, :serial_number] )
  end

end

