class Work < ActiveRecord::Base
  belongs_to :kind

  validates :title, presence: {message: "Title required."}
  delegate :name, to: :kind, prefix: true
end
