require 'rspec'
require_relative 'toyota'

describe 'Toyota' do
  it "should be a thing" do
    expect{Toyota.new(2016)}.to_not raise_error
  end

  it 'has 4 wheels' do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.number_wheels).to be_a Numeric
    expect(a_toyota.number_wheels).to be 4
  end

  it 'has model year' do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.model_year).to be_a Numeric
    expect(a_toyota.model_year).to be 2016
  end

  it "defaults to lights off" do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.light_switch?).to be false
  end

  it "has lights off" do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.light_switch("off")).to be false
  end

  it "has lights on" do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.light_switch("on")).to be true
  end

  it "defaults to signal off" do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.blinker_switch?).to eq "off"
  end

  it "signals left" do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.blinker_switch("left")).to be true
  end

  it "signals right" do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.blinker_switch("right")).to be false
  end

  it "has speed" do
    a_toyota = Toyota.new(2016)
    expect(a_toyota.speed).to be_a Numeric
    expect(a_toyota.speed).to be 0

  end
  it "can accelerate" do
    a_toyota = Toyota.new(2016)
    a_toyota.accelerate
    expect{a_toyota.accelerate}.to change{a_toyota.speed}.from(7).to(7+7)
  end

  it "can brake" do
    a_toyota = Toyota.new(2016)
    a_toyota.brake
    expect(a_toyota.speed).to be 0
    a_toyota.accelerate
    expect{a_toyota.brake}.to change{a_toyota.speed}.from(7).to(7-5)
  end

end
