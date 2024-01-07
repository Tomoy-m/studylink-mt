class Music < ApplicationRecord
  mount_uploader :file, AudiofileUploader
end
