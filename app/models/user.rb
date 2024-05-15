class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :medical_records
  validates :password, presence: true, length: { minimum: 8 }
  # Puedes agregar otras validaciones aquí según tus requisitos
end

