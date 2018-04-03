class User < ActiveRecord::Base
    #Este método crea un nuevo usuario en la tabla con la respuesta de omniauth
    def self.create_with_omniauth(auth)
      create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
        user.image = auth["info"]["image"]
        end
    end
# el siguiente código obtiene el avatar de los usuarios desde facebook:

def largeimage
    "http://graph.facebook.com/#{self.uid}/picture?type=large"
  end
  
  def normalimage
    "http://graph.facebook.com/#{self.uid}/picture?type=normal"
  end
end