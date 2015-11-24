class Event < ActiveRecord::Base
	belongs_to :user
	validates :details, presence: true
	validates :occurs_at, presence: true

	def self.notify_user
		time_after_one_hour = Time.now + 1.hour
		#refine this further
		time_one_hour_back = Time.now - 1.hour
		@events = Event.where("occurs_at <= ? AND occurs_at >= ?", time_after_one_hour, time_one_hour_back)
		#use this one for testing
		#@events = Event.where("occurs_at <= ?", time_after_one_hour)
		
		@events.each do |event|			
			EventMailer.notification(event).deliver_now
		end

	end
end
