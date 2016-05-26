class StartUp < ActiveRecord::Base
  validates :name, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :image, presence: true
  validates :video, presence: true
  validates :stage_id, presence: true
  validates :incubator_id, presence: true
  validates :location_id, presence: true

<<<<<<< HEAD
  mount_uploader :image, StartUpsImageUploader

end
=======
end
>>>>>>> a43a0fb97eb2bdf5e97926e2186b310cd461c914
