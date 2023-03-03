require_relative './main'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    counter = 0

    while counter < @list.length

      yield(@list[counter])

      counter += 1

    end
  end
end

list = MyList.new(1, 2, 3, 4)

list.each do |e|
  p(e)
end

p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })
p(list.filter(&:even?))