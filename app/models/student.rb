class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image_url, ImageUploader
  has_many :student_jobs
  has_many :jobs, through: :student_jobs
  belongs_to :advisor, optional: true
  belongs_to :group

end
