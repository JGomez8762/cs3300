json.extract! project_page, :id, :title, :description, :created_at, :updated_at
json.url project_page_url(project_page, format: :json)
