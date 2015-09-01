class Kind < ActiveRecord::Base
  has_many :works, dependent: :nullify

  validates :language, presence: true, uniqueness: true
end
