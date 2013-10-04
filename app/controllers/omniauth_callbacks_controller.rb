class OmniauthCallbacksController < Devise::OmniauthCallbacksController 

	def facebook 
		auth = request.env["omniauth.auth"]

		 unless auth.credentials.token.blank? 
		 	@user = User.where(:email => auth.info.email).first
		 	if @user.blank?
			 	 @new_user = User.create(:email => auth.info.email, :uid => auth.uid, :password => Digest::SHA2.hexdigest(Time.now.to_s),
			 	  :name => auth.extra.raw_info.name, provider:auth.provider)
			 	 @new_user.create_facebook_access_token(:access_token => auth.credentials.token)
			 	 sign_in @new_user, :event => :authentication
			 else
			 		sign_in @user, :event => :authentication
			 end
		 else
		 		flash[:alert] = 'You need to permit the app to access your facebook credential'
		 end
		 redirect_to root_path
	end
	
end

