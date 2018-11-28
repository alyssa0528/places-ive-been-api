class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :year_visited, :notes, :img_url

  belongs_to :city
end
