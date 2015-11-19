require 'rails_helper'

RSpec.describe Identity, type: :model do
  
  context " A valid identity" do 
    before do       
     @identity = FactoryGirl.build(:identity)
     @user = @identity.user     
    end
    
    it "does not save without provider" do       
      @identity.provider = nil      
      expect{@identity.save}.to_not change{ Identity.count } 
    end
    
    it "does not save without uid" do       
      @identity.uid = nil      
      expect{@identity.save}.to_not change{ Identity.count } 
    end
    
  end
end
