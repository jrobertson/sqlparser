#!/usr/bin/env ruby

# file: sqlparser.rb

require 'lineparser'

class SqlParser

  attr_reader :to_a

  def initialize(raw_lines)

    patterns = [
      [:root, 'SELECT *', :select_all],
      [:root, 'SELECT :cols', :select],
      [:root, 'FROM :tables', :from],
      [:root, 'WHERE :condition', :where],
        [:where, 'AND :and', :where_and ],
        [:where, 'OR :or', :where_or ],
      [:root, 'INSERT INTO *', :insert_into],
        [:root, 'VALUES :cols', :insert_values],
      [:all, /--/, :comment]
    ]

    lp = LineParser.new patterns

    lines = raw_lines\
         .sub(/\bselect\s+/,'SELECT ')\
         .sub(/\s+from\s+/,"\nFROM ")\
         .sub(/\s+where\s+/,"\nWHERE ")\
         .sub(/\s+and\s+/,"\n  AND ").sub(/\s+or\s+/,"\n  OR ")

    @to_a = lp.parse lines
  end

end

if __FILE__ == $0 then

  SqlParser.new(ARGV[0]).to_a
end  
