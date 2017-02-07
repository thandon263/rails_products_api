class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lasname, :email, :description
end
