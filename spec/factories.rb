FactoryBot.define do
  factory :usuario do
    username { "loginbot" }
    password_digest { "senhasenha" }
    id { "1" }
  end
end
