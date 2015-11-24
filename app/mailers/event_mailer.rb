class EventMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def notification(event)
		@event = event
		@user = event.user
		mail(to: @user.email, subject: 'Event Reminder')
	end

end
