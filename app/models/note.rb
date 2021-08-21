class Note < ApplicationRecord
  validates :title, presence: true 
  validates :content, presence: true

  default_scope { where(delete_at: nil) }
end
