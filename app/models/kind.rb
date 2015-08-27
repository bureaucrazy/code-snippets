class Kind < ActiveRecord::Base
  has_many :works, dependent: :destroy

  validates :language, presence: true, uniqueness: true
end
