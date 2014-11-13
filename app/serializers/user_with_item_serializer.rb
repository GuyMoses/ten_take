class UserWithItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :uid, :provider, :created_at, :updated_at, :items

  root 'user'

  def items
  	object.items.map { |i| EmbedItemSerializer.new(i) }.to_json
  end
end