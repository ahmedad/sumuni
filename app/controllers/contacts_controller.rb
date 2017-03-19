class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		name = params[:contact][:name]
		email = params[:contact][:email]
		request = params[:contact][:request]
		massage = params[:contact][:massage]

		ContactMailer.contact_email(name, email, request, massage).deliver

		if @contact.save
			redirect_to root_path, notice: "Massage sent"
		else
			redirect_to new_contact_path, notice: 'Error Occurred!'
		end
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :request, :massage)
	end
end