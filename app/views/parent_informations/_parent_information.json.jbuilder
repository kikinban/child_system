json.extract! parent_information, :id, :date, :title, :content, :file_content, :created_at, :updated_at
json.url parent_information_url(parent_information, format: :json)
