class ContactMailer < ActionMailer::Base
	default to: 'info@sumunitech.co.ke'
	def contact_email(name, email, request, massage)
		@name = name
		@email = email
		@request = request
		@massage = massage

		mail(from: email, subject: 'Request for quotation')
	end
end