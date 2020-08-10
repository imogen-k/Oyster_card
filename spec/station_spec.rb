require "station"

describe Station do

  it "shows the zone" do 
    station = Station.new(1, "Picadilly")
    expect(station.zone).to eq 1
  end

  it "show the name of the station" do
    station = Station.new(1, "Picadilly")
    expect(station.name).to eq "Picadilly"
  end

end