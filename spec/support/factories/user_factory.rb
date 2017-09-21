FactoryGirl.modify do
  factory :user do
    trait :with_wallet do
      transient do
        wallet_count 3
      end

      after(:create) do |user, evaluator|
        evaluator.wallet_count.times do
          order = create(:order_ready_to_ship, user: user)
          user.wallet.add order.payments.first.source
        end
        user.save
      end
    end
  end
end
