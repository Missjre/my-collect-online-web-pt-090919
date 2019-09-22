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
 my_collect(languages)= (["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"])
  end

  def does not modify the original collection
    my_collect(languages) do |language|
      language.upcase
    end
    my_collect(languages)=(['ruby', 'javascript', 'python', 'objective-c'])
  end

  def yields the correct element from the given collection, in this case students
    my_collect(students) do |student|
      my_collect(student)=(nil)
    end
  end

  def returns a new collection of appropriately modified elements, in this case student first name 
     my_collect(students) do |student|
      student.split(" ").first
    end
    my_collect(students)=(["Tim", "Tom", "Sophie", "Antoin"])
  end

  def does not modify the original collection
    my_collect(students) do |student|
      student.split(" ").first
    end
    my_collect(students)=(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'])
  end



