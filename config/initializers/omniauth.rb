Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :facebook, ENV['559036617504206'], ENV['cba2a7f0c10efb59aee95c786c06ed4e'] 
end