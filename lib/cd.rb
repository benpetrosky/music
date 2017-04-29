class Cd
  @@all_cds = []

  define_method(:initialize) do |cd|
    @cd = cd
  end

  define_method(:cd) do
    @cd
  end

  define_singleton_method(:all) do
    @@all_cds
  end
  define_method(:save) do
    @@all_cds.push(self)
  end
  define_singleton_method(:clear) do
    @@all_cds = []
  end
end
