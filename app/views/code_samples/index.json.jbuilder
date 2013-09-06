json.array!(@code_samples) do |code_sample|
  json.extract! code_sample, :title, :description, :link, :code
  json.url code_sample_url(code_sample, format: :json)
end
