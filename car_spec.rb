require 'rspec'
require_relative 'car'

describe 'Car' do
  it "should be a thing" do
    expect{Car.new(2016)}.to_not raise_error
  end

  it 'has 4 wheels' do
    a_car = Car.new(2016)
    expect(a_car.number_wheels).to be_a Numeric
    expect(a_car.number_wheels).to be 4
  end

  it 'has model year' do
    a_car = Car.new(2016)
    expect(a_car.model_year).to be_a Numeric
    expect(a_car.model_year).to be 2016
  end

end
