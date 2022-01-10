class ParentInformation < ApplicationRecord
  mount_uploader :file_content, ImageUploader
end
