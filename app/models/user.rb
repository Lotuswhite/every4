class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX
         with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ } do
           validates :family_name
           validates :first_name
         end

         validates :sex, presence: true
  # Association
  has_many :conditions
end
