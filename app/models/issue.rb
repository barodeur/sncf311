class Issue
  include Mongoid::Document

  belongs_to :author, class_name: 'User', inverse_of: :issues

  field :title
  field :description
  field :where
  field :state, default: 'pending'
  field :ll, type: Array
  field :bottom_or_top
  field :in_train, type: Integer
  field :submited_at, type: DateTime
  belongs_to :train
  default_scope -> {where(:submited_at.ne => nil)}
end
