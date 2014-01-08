module DashboardHelper

	def get_short_date(date)
		Time.zone.parse(date).strftime("%B %e, %Y") if !date.nil?
	end

	def get_tooltip_date(date)
		Time.zone.parse(date).strftime("%A, %B %e, %Y, at %I:%M%P")  if !date.nil?
	end

end
