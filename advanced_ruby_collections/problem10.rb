array1 = [{a: 1},
          {b: 2, c: 3},
          {d: 4, e: 5, f: 6}]

array1.map do |element|
    element.map { |k,v| [k, (v+1)]}.to_h
end
