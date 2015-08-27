class Kind < ActiveRecord::Base
  has_many :works, dependent: :destroy
end
