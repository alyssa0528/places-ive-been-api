class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :year_visited, :notes

  belongs_to :city
end
