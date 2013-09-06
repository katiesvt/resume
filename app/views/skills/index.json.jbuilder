json.array!(@skills) do |skill|
  json.extract! skill, :title, :rating
  json.url skill_url(skill, format: :json)
end
