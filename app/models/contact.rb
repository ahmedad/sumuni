class Contact < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :request, presence: true
	validates :massage, presence: true
end