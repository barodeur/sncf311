class Train
  include Mongoid::Document

  field :name
  field :from
  field :to
  field :current_ll, type: Array
end
