module ApplicationHelper

	# Add CSS class for tags with errors.
	def field_class(resource, field_name)
	  resource.errors[field_name].present? ? "validation-error".html_safe : "".html_safe
	end

end
