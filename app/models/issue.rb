class Issue
  include Mongoid::Document
  include Mongoid::Paperclip

  belongs_to :author, class_name: 'User', inverse_of: :issues

  before_save :set_cat

  field :title
  field :description
  field :where
  field :state, default: 'En attente'
  field :ll, type: Array
  field :bottom_or_top
  field :in_train
  field :issue_type
  field :submited_at, type: DateTime
  field :cat
  field :comment
  belongs_to :train
  default_scope -> {where(:submited_at.ne => nil)}
  field :user_comment
  has_mongoid_attached_file :picture

  def set_cat
    map = {
      'materiel' => ['Eclairage', 'Porte'],
      'infra' => [],
      'gare' => ['Accident de personne'],
      'voyage_sncf' => []
    }
    map.each do |cat, ary|
      self.cat = cat if ary.include?(self.issue_type)
    end
  end
end
