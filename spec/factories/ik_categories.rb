FactoryGirl.define do
  factory :ik_categories, class: IkCategory do
    factory :c_idea do
      id 1
      name "Idea"
    end
    factory :c_meet do
      id 2
      name "Meet with friend"
    end
  end
end
