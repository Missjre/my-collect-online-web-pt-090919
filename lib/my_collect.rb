def my_collect
  let(:languages) { ['ruby', 'javascript', 'python', 'objective-c'] }
  let(:students) { ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'] }

def  #can handle an empty collection
    empty_array = []
    counter = 0
      my_collect(empty_array) do |x|
        counter += 1
      end
    my_collect(counter)=0
  end

  def #yields the correct element from a given collection, in this case languages
    my_collect(languages) do |language|
      my_collect(language)=(nil)
    end
  

  def returns a new collection of appropriately modified elements, in this case capitalized languages
     my_collect(languages) do |language|
      language.upcase
  (["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"])
  end

  it 'does not modify the original collection' do
    my_collect(languages) do |language|
      language.upcase
    end
    expect(languages).to eq(['ruby', 'javascript', 'python', 'objective-c'])
  end

  it "yields the correct element from the given collection, in this case students" do
    my_collect(students) do |student|
      expect(student).to_not eq(nil)
    end
  end

  it "returns a new collection of appropriately modified elements, in this case student first names" do
    expect(my_collect(students) do |student|
      student.split(" ").first
    end).to eq(["Tim", "Tom", "Sophie", "Antoin"])
  end

  it 'does not modify the original collection' do
    my_collect(students) do |student|
      student.split(" ").first
    end
    expect(students).to eq(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'])
  end
end


