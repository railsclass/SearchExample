FactoryGirl.define do
  factory :survey do
    title 'A Survey'
    open true
    result 'bla bla bla'

    factory :closed_survey do
        open false
    end
  end

  factory :survey_birnen , class: Survey do
    title 'Aepfel oder Birnen'
    open true
    result 'bla bla bla'
  end
  factory :survey_orangen , class: Survey do
    title 'Orangen oder Zitronen'
    open true
    result 'bla bla bla'
  end
  
end
