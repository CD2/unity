class Enquiry < ActiveRecord::Base

	validates :name, presence: true
	validate :email_or_phone

	def email_or_phone
    unless [email?, phone?].include?(true)
      if email.nil?
       errors.add :base, 'Please fill in your phone number.'
      else
        errors.add :base, 'Please fill in your email address.'
      end
    end
  end

end
