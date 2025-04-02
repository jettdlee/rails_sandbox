class Item < ApplicationRecord
  belongs_to :company

  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  # after_create_commit -> { broadcast_prepend_later_to "items" }
  # after_update_commit -> { broadcast_replace_later_to "items" }
  # after_destroy_commit -> { broadcast_remove_to "items" }
  broadcasts_to ->(item) { [item.company, "items"] }, inserts_by: :prepend
end
