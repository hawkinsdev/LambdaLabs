class AutorSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_birth

  has_many :book
end
