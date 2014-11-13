class EmbedItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :created_at, :updated_at, :status
  root false

  def image
  	object.image.url
  end
end