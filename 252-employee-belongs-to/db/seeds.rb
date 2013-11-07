Company.create! id: 1,
  name: "IBM",
  stock_symbol: "NYSE: IBM"
Company.create! id: 2,
  name: "Microsoft Corporation",
  stock_symbol: "NASDAQ: MSFT"
Company.create! id: 3,
  name: "Apple Inc.",
  stock_symbol: "NASDAQ: AAPL"

Employee.create! first_name: "Caroline", last_name: "Brown", company_id: 3
Employee.create! first_name: "Don", last_name: "Black", company_id: 3
Employee.create! first_name: "Tim", last_name: "Johnson", company_id: nil
Employee.create! first_name: "Sally", last_name: "Davidson", company_id: 1
Employee.create! first_name: "Fred", last_name: "Jones", company_id: 2

