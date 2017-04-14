FactoryGirl.modify do
  factory :taxon do
    parent { taxonomy.root }
  end

  factory :product do
    trait :with_images do
      transient { images_count 3 }

      after(:create) do |product, evaluator|
        create_list(:image, evaluator.images_count).each do |image|
          product.images << image
        end
      end
    end

    trait :with_taxons do
      transient { taxons_count 3 }

      after(:create) do |product, evaluator|
        product.taxons = create_list(:taxon, evaluator.taxons_count)
        product.save!
      end
    end

    trait :with_properties do
      transient { properties_count 3 }

      after(:create) do |product, evaluator|
        product.properties = create_list(:property, evaluator.properties_count)
        product.save!
      end
    end
  end
end
