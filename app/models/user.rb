class User < ActiveRecord::Base

  has_secure_password
  
  def editor? 
	  self.role == 'editor' || 'admin'
	end
	
	def admin? 
	  self.role == 'admin' 
	end

end
