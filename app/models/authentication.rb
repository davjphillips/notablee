class Authentication < ActiveRecord::Base
  belongs_to :user
  
  def associate_authentication(omniauth)
    self.authentications.create!(:provider => omniauth['provider'], 
                                :uid => omniauth['uid'], 
                                :omniauth => omniauth['credentials']['token'], 
                                :omniauth => omniauth['credentials']['secret'])
  end
end
