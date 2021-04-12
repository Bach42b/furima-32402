class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          
  validates :nickname, presence: true
  validates :email, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6 },format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{7,}/}
  validates :encrypted_password, presence: true, confirmation: true, length: { minimum: 6 },format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{7,}/}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true
  validates :birthday, presence: true

  validates :first_name_kana, :last_name_kana, format: { with: /\p{katakana}/}


end
