class BillsController < ApplicationController
	def index 
		@bills = Bill.all
	end

	def new
		@bill = Bill.new
		@bill.recipients.build
		@bill.recipients.build
	end

	def create
		if Bill.create(bill_params)
			redirect_to action: :index
		else 
			render :new
		end
	end	

	def show
		@bill = Bill.find(params[:id])
	end

	def bill_params
		bill_params = params.require(:bill).permit(:name, :price, :description, :bank_account, recipients_attributes: [:name, :email])
	end
end