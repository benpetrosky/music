class Cd
  @@all_cds = []

  define_method(:initialize) do |cd|
    @cd = cd
    @id = @@all_cds.length().+(1)

  end
  define_method(:cd) do
    @cd
  end
  define_method(:id)do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_cd = nil
    @@all_cds.each() do |cd|
      if cd.id().eql?(identification.to_i())
        found_cd = cd
      end
    end
    found_cd
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
