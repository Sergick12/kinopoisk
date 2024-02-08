FactoryBot.define do
  factory :user do
    email { "test@example.com" }
    encrypted_password { "encrypted_password" }
    reset_password_token { "reset_token" }
    reset_password_sent_at { "2022-01-01 12:00:00" }
    remember_created_at { "2022-01-01 12:10:00" }
  end
end
