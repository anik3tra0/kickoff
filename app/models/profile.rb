class Profile < ActiveRecord::Base
	belongs_to :user

	def full_name
		if (first_name && last_name)
			(first_name + " " + last_name).titleize
		elsif (first_name && !last_name)
			first_name.titleize
		elsif (!first_name && last_name)
			last_name.titleize
		else
			"You don't have a name yet! Go Update your Profile."
		end
	end

end