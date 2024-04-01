class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum funeral_wishes: { する: 0, しない: 1 }
         enum funeral_form: { 一般葬: 0, 家族葬: 1, 喪主に任せる: 2}
end
