class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :year_publication

  belongs_to :autor
end
