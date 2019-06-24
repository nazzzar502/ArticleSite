class User < ApplicationRecord

  has_secure_password

  has_one_attached :image
  has_many :article
  has_many :comments


  validates :login, presence: true, length: {in: 3 .. 10},uniqueness: true

  validates :password, presence: true, length: {in: 3 .. 15}

  #validates :name, presence: true, length: {in: 3 .. 15}

  #validates :lastname, presence: true, length: {in: 3 .. 15}

  validates :email, presence: true

  #розібратися з валідатором форм для імейлу




end
