module Pluckex
  module Calculations
    # one arg case:
    #   Person.pluck_tied_by_id(:name)
    #     # => {1=>'David', 2=>'Jeremy', 3=>'Jose'}
    #
    # multiple args case:
    #   Person.pluck_tied_by_id(:name, :age)
    #     # => {1=>{:name=>"David", :age=>25}, 2=>{:name=>"Jeremy", :age=>27}}
    def pluck_tied_by_id(*col_name)
      if col_name.length == 1
        col_names = [:id] << col_name.first
        Hash[*self.pluck(*col_names).flatten]
      else
        col_hash_array = self.pluck_with_keys(*col_name)
        id_array = self.pluck(:id)
        Hash[*[id_array, col_hash_array].transpose.flatten]
      end
    end

    # Person.pluck_with_keys(:id, :name)
    #   # => [{:id=>1, :name=>'David'}, {:id=>2, :name=>'Jeremy'}, {:id=>3, :name=>'Jose'}]
    def pluck_with_keys(*col_names)
      self.pluck(*col_names).map do |element|
        hash = {}
        col_names.map.with_index do |col, i|
          hash.merge!(col => element[i])
        end.uniq
      end.flatten
    end
  end
end
