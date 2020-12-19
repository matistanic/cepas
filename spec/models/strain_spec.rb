require 'rails_helper'

RSpec.describe Strain, type: :model do
 
  it 'creates a duplicated name' do
    first_strain = Strain.create(name: "example")
    second_strain = Strain.create(name: "example")
    check_attributes = first_strain.attributes.except(:id, :created_at, :updated_at)
    expect(second_strain).to_not have_attributes(check_attributes)
  end

  it 'checks name not blank' do
    first_strain = Strain.create(name: "")
    strain_name = first_strain.name
    expect(strain_name).to_not eq("")
  end
  it 'checks name not nil' do
    first_strain = Strain.create(name: nil)
    strain_name = first_strain.name
    expect(strain_name).to_not eq(nil)
  end
  it 'checks name not Carmenere' do
    first_strain = Strain.create(name: "Carmenere")
    strain_name = first_strain.name
    expect(strain_name).to_not eq("Carmenere")
  end
  
end