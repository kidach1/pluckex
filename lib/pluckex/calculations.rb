module ActiveRecord
  module Calculations
    # #   Person.pluck_tied_by_id(:name)
    # #   # => {1=>'David', 2=>'Jeremy', 3=>'Jose'}
    # def pluck_tied_by_id(col_name)
    #   col_names = [:id] << col_name
    #   Hash[*self.pluck(*col_names).flatten]
    # end
    #
    # #   Person.pluck_with_keys(:id, :name)
    # #   # => [{:id=>1, :name=>'David'}, {:id=>2, :name=>'Jeremy'}, {:id=>3, :name=>'Jose'}]
    # def pluck_with_keys(*col_names)
    #   self.pluck(*col_names).map do |element|
    #     hash = {}
    #     col_names.map.with_index do |col, i|
    #       hash.merge!(col => element[i])
    #     end.uniq
    #   end.flatten
    # end
  end
end
