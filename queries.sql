-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

  SELECT productname, categoryname FROM product AS p LEFT JOIN category AS c ON p.categoryid = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

  SELECT o.id, companyname FROM 'order' AS o LEFT JOIN shipper AS s ON o.shipvia = s.id WHERE orderdate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

  SELECT productname, quantity FROM orderdetail AS o LEFT JOIN product AS p ON o.productid = p.id WHERE orderid = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

  SELECT DISTINCT o.id AS OrderId, e.lastname AS Employee_Last_Name, c.companyname AS Customer_Company_Name FROM 'order' AS o JOIN customer AS c ON o.customerid = c.id JOIN employee AS e ON o.employeeid = e.id;