class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable      
                 
  
  with_options presence: true do
    validates :nickname
   
    validates :first_name
    validates :last_name
    validates :first_name_kana
    validates :last_name_kana
    validates :birthday 
  end
    #validates :password_confirmation: true, length: { minimum: 6 } format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/ } /\A[a-z0-9]+\z/
    validates :password,format: { with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+\z/} 
    #validates :password confirmation: true, length: { minimum: 6 } format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/} 
    #validates :encrypted_password, presence: true, confirmation: true, length: { minimum: 6 },format: { with: /\A[a-z0-9]+\z/}  
                                       
  
  with_options format: { with: /\A[ぁ-んァ-ン一-龥々ー]+\z/ } do
    validates :last_name
    validates :first_name
  end
  
  with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :last_name_kana
    validates :first_name_kana
  end

end
