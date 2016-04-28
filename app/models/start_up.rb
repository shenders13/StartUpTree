class StartUp < ActiveRecord::Base
  validates :name, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :image, presence: true
  validates :video, presence: true
  validates :stage_id, presence: true
  validates :incubator_id, presence: true
  validates :location_id, presence: true

end