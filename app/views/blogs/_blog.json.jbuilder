json.extract! blog, :id, :name, :business_nbame, :gst_no, :created_at, :updated_at
json.url blog_url(blog, format: :json)
