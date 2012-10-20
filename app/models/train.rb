class Train
  include Mongoid::Document
  include Mongoid::Timestamps
  include Geocoder::Model::Mongoid

  field :name
  field :from
  field :to
  field :current_ll, type: Array
end
