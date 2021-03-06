class PhoneNumber < ActiveRecord::Base
  validates :number, :contact_id, :contact_type, presence: true
  # validates :person_id, presence: true
  belongs_to :contact, polymorphic: true
  # belongs_to :company
end
