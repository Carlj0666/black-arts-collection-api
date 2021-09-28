class ArtSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :artist
  attributes :title, :link
end
