class Price < ApplicationRecord
  belongs_to :article
  enum min: { min_plan_1: 10, min_plan_2: 100, min_plan_3: 500, min_plan_4: 1000 }
  enum max: { max_plan_1: 500, max_plan_2: 1000 ,max_plan_3: 2000, max_plan_4: 5000 }
  enum rate: { low: "10人で100円UP", normal: "100人で100円UP", high: "1000人で100円UP" }

  validates :min, presence: true
  validates :max, presence: true
  validates :rate, presence: true

end
