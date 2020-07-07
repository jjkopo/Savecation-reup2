class ImportController < ApplicationController
  def index
  	@triplace = Triplace.order(:title)
        if current_user
           @user=User.find(current_user.id)
        	
        else
        	@user=nil
        end	
  	
  end	
end  
