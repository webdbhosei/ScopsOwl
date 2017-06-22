FactoryGirl.define do
  factory :ik_memos, class: IkMemo do
    factory :memo1 do
      content "Rainy season started."
      ik_category_id 1
    end

    factory :memo2 do
      content "Meet with John, at Mitaka, 13:00 June 20."
      ik_category_id 2
    end
    factory :memo2_wrong, parent: :memo2 do
      ik_category_id 0
    end
    factory :memo2_new, parent: :memo2 do
      content "Meet with John, at Mitaka, 19:00 Jan 20."
    end
  end
end
