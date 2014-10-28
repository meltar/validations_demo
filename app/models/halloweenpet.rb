class Halloweenpet < ActiveRecord::Base
	mount_uploader :picture, PictureUploader

	# Name must be provided
	validates_presence_of :name

	# Require a minimum length
	validates :name, length: { minimum: 2 }

	# Email address must be unique
	# Uniqueness checks are case sensitive by default
	validates :email, uniqueness: { case_sensitive: false }

	# Check min and max length of description and return an error message
	# if the input fails one of the rules
	validates :description, length: {
		minimum: 1,
		maximum: 255,
		too_short: "%{count} characters is the minimum allowed",
		too_long: "%{count} characters is the maximum allowed" }

	# Make sure the filename was provided
	validates_presence_of :picture

	# Ensure the age is 1 or 2 digits and an integer
	validates :age, length: { in: 1..2 }


	# These strings are case sensitive
	validates :gender, inclusion: { in: ["male", "Male",
																			 "female", "Female",
																			 "unknown", "Unknown"]}
end
