class User
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :screen_name, type: String
  field :name, type: String
  field :email, type: String
  field :user_id, type: Integer

  def dynamic_attributes
    self.attributes.delete_if { |attribute| 
      self.fields.keys.member? attribute 
    }
  end
end
