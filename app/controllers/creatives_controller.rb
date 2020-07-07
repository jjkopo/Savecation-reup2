class CreativesController < ApplicationController
  layout "creative"
  def index
        if(current_user)    
	@user=User.find(current_user.id)
        else
        @user=nil
	end  
	end
	end
