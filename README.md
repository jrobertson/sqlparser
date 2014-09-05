# Introducing the sqlparser gem

    require 'sqlparser'

    s = 'select *' 
    a = SqlParser.new(s).to_a 
    #=> [[:select_all, {:captures=>[]}, ["SELECT *"], nil]] 

    s = 'select surname from employee where emp_id = "405060";'
    a = SqlParser.new(s).to_a 
    #=> [
          [:select, {:captures=>["surname"], :cols=>"surname"}, ["SELECT surname"], nil], 
          [:from, {:captures=>["employee"], :tables=>"employee"}, ["FROM employee"], nil], 
          [:where, {:captures=>["emp_id = \"405060\";"], :condition=>"emp_id = \"405060\";"}, ["WHERE emp_id = \"405060\";"], []]] 

    s = 'select surname, lastname from employee where emp_id = "405060";'
    a = SqlParser.new(s).to_a 
    #=> [
          [:select, {:captures=>["surname, lastname"], :cols=>"surname, lastname"}, ["SELECT surname, lastname"], nil], 
          [:from, {:captures=>["employee"], :tables=>"employee"}, ["FROM employee"], nil], 
          [:where, {:captures=>["emp_id = \"405060\";"], :condition=>"emp_id = \"405060\";"}, ["WHERE emp_id = \"405060\";"], []]] 

## Resources

* [sqlparser](https://rubygems.org/gems/sqlparser)

sqlparser gem parser sql

