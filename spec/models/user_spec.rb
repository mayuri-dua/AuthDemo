require 'rails_helper'

RSpec.describe User, type: :model do
  
  context "A user object" do
    before { @user = FactoryGirl.build(:user) }
    
    context "when it is valid" do 
      
      it "does not allow saving with invalid email format" do
        @user.email = "invalid-email"
        expect{@user.save}.to_not change{ User.count }         
      end
      
      it "allows saving the user with a valid email id" do
        expect{@user.save}.to change{ User.count }.by(1)        
      end
      
      it "requires name to be assigned" do
        @user.name = nil
        expect{@user.save}.to_not change{ User.count }
      end
      
    end
  end
end
