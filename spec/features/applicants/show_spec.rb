# /spec/features/applicants/show_spec.rb


require 'rails_helper'

RSpec.describe "Show page of applicants", type: :feature do

  it 'displays applicants attributes' do
    @fort_greene = .create!(name: 'Fort Greene', employee_count: 20, license: true)
  end
end
