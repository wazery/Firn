Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '559036617504206', '0f74f5b5d9677e83baa31246b8be2af6'
end