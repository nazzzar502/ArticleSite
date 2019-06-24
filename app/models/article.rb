class Article < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  has_many :comments


  has_many :parameters, inverse_of: :article
  accepts_nested_attributes_for :parameters, reject_if: :all_blank, allow_destroy: true


  scope :by_user, -> (user_id){where(user_id: user_id)}

  validates :title, presence: true, length: {in: 3 .. 20}

  validates :short_description, presence: true, length: {in: 5 .. 50}



end
