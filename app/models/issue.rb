class Issue
  include Mongoid::Document

  field :title
  field :description
  field :where
  field :state
  field :ll, type: Array
  belongs_to :train
end
