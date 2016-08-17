require 'rspec'
require_relative 'tata'

describe 'Tata' do
  it "should be a thing" do
    expect{Tata.new(2016)}.to_not raise_error
  end

  it 'has 4 wheels' do
    a_tata = Tata.new(2016)
    expect(a_tata.number_wheels).to be_a Numeric
    expect(a_tata.number_wheels).to be 4
  end

  it 'has model year' do
    a_tata = Tata.new(2016)
    expect(a_tata.model_year).to be_a Numeric
    expect(a_tata.model_year).to be 2016
  end

  it "defaults to lights off" do
    a_tata = Tata.new(2016)
    expect(a_tata.light_switch?).to be false
  end

  it "has lights off" do
    a_tata = Tata.new(2016)
    expect(a_tata.light_switch("off")).to be false
  end

  it "has lights on" do
    a_tata = Tata.new(2016)
    expect(a_tata.light_switch("on")).to be true
  end

  it "defaults to signal off" do
    a_tata = Tata.new(2016)
    expect(a_tata.blinker_switch?).to eq "off"
  end

  it "signals left" do
    a_tata = Tata.new(2016)
    expect(a_tata.blinker_switch("left")).to be true
  end

  it "signals right" do
    a_tata = Tata.new(2016)
    expect(a_tata.blinker_switch("right")).to be false
  end

  it "has speed" do
    a_tata = Tata.new(2016)
    expect(a_tata.speed).to be_a Numeric
    expect(a_tata.speed).to be 0
  end

  it "can accelerate" do
    a_tata = Tata.new(2016)
    a_tata.accelerate
    expect{a_tata.accelerate}.to change{a_tata.speed}.from(2).to(4)
  end

  it "can brake" do
    a_tata = Tata.new(2016)
    a_tata.brake
    expect(a_tata.speed).to be 0
    a_tata.accelerate
    expect{a_tata.brake}.to change{a_tata.speed}.from(2).to(2-1.25)
  end

end
