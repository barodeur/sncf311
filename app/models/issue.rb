class Issue
  include Mongoid::Document

  belongs_to :author, class_name: 'User', inverse_of: :issues

  field :title
  field :description
  field :where
  field :state
  field :ll, type: Array
  field :bottom_or_top
  field :in_train, type: Integer
  belongs_to :train
end
