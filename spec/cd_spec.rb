require('rspec')
require('cd')

describe('Cd') do
  # before() do
  #   Cd.clear()
end

describe(".all") do
  it('is empty at first') do
    expect(Cd.all()).to(eq([]))
  end
end

describe("#save") do
  it("adds a cd to the array of saved cds") do
    test_cd = Cd.new("Underground 2000")
    test_cd.save()
    expect(Cd.all()).to(eq([test_cd]))
  end
end

describe('.clear') do
  it("empties out all of the saved cds") do
    Cd.new("Come gangsta").save()
    Cd.clear()
    expect(Cd.all()).to(eq([]))
  end
end
