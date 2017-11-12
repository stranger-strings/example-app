Rails.application.routes.draw do
  get "/fortune_url" => "examples#fortune_method"
  get "/lotto_url" => "examples#lotto_method"
end
