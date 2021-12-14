# /spec/features/applicants/show_spec.rb


require 'rails_helper'

RSpec.describe "Show page of applicants", type: :feature do
  before :each do
    @shelter1 = Shelter.create!(foster_program: true, name: 'Love Shelter', city: 'Parker', rank: 1)

    @applicant1 = Applicant.create!(name: 'Richie', street_address: "3707 south waco street", city: 'Aurora', state: "Colorado", zip_code: 80013, description: "blah", status: "blah blah")

    @pet1 = @applicant1.pets.create!(adoptable: true, age: 4, breed: 'husky', name: 'Fido', shelter_id: @shelter1.id)

    @petapplicant1 = PetApplicant.create!(pet_id: @pet1.id, applicant_id: @applicant1.id)

    visit "/applicants/#{@applicant1.id}"
  end

  it 'displays applicants attributes' do
    expect(page).to have_content(@applicant1.name)
    expect(page).to have_content(@applicant1.street_address)
    expect(page).to have_content(@applicant1.city)
    expect(page).to have_content(@applicant1.state)
    expect(page).to have_content(@applicant1.zip_code)
    expect(page).to have_content(@applicant1.description)
    expect(page).to have_content(@applicant1.status)

    expect(page).to have_content(@pet1.name)
  end
end
