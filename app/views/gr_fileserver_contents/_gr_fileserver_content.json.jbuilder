json.extract! gr_fileserver_content, :id, :file_content, :file_name, :file_type, :file_size, :file_permission, :created_at, :updated_at
json.url gr_fileserver_content_url(gr_fileserver_content, format: :json)
