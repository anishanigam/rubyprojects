require 'rspec'
require_relative 'tesla'

describe 'Tesla' do
  it "should be a thing" do
    expect{Tesla.new(2016)}.to_not raise_error
  end

  it 'has 4 wheels' do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.number_wheels).to be_a Numeric
    expect(a_tesla.number_wheels).to be 4
  end

  it 'has model year' do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.model_year).to be_a Numeric
    expect(a_tesla.model_year).to be 2016
  end

  it "defaults to lights off" do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.light_switch?).to be false
  end

  it "has lights off" do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.light_switch("off")).to be false
  end

  it "has lights on" do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.light_switch("on")).to be true
  end

  it "defaults to signal off" do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.blinker_switch?).to eq "off"
  end

  it "signals left" do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.blinker_switch("left")).to be true
  end

  it "signals right" do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.blinker_switch("right")).to be false
  end

  it "has speed" do
    a_tesla = Tesla.new(2016)
    expect(a_tesla.speed).to be_a Numeric
    expect(a_tesla.speed).to be 0

  end
  it "can accelerate" do
    a_tesla = Tesla.new(2016)
    a_tesla.accelerate
    expect{a_tesla.accelerate}.to change{a_tesla.speed}.from(10).to(10+10)
  end

  it "can brake" do
    a_tesla = Tesla.new(2016)
    a_tesla.brake
    expect(a_tesla.speed).to be 0
    a_tesla.accelerate
    expect{a_tesla.brake}.to change{a_tesla.speed}.from(10).to(10-7)
  end

end
