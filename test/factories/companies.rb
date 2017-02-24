FactoryGirl.define do
  factory :company do 
    name {Faker::Company.name}
    landline {"02472-240728"}

    transient do
      users_count 1
    end

    after(:build) do |company, evaluator|
        company.employees_attributes = [FactoryGirl.attributes_for(:user)]
        company.address_attributes = FactoryGirl.attributes_for(:address)
    end
  end
end
