SELECT bestbuy.products.Name, bestbuy.categories.Name FROM bestbuy.products 
INNER JOIN bestbuy.categories ON bestbuy.products.CategoryID = bestbuy.categories.CategoryID WHERE bestbuy.categories.Name='Computers';
SELECT bestbuy.products.Name, bestbuy.products.Price, bestbuy.reviews.rating FROM bestbuy.products 
LEFT JOIN bestbuy.reviews ON bestbuy.products.ProductID = bestbuy.reviews.ProductID 
WHERE bestbuy.reviews.Rating=5;
SELECT bestbuy.employees.FirstName, bestbuy.employees.LastName, SUM(bestbuy.sales.quantity) AS Total FROM bestbuy.sales  
INNER JOIN bestbuy.employees ON bestbuy.employees.EmployeeID = bestbuy.sales.EmployeeID 
GROUP BY bestbuy.employees.EmployeeID ORDER BY TOTAL DESC LIMIT 1;
SELECT bestbuy.departments.Name, bestbuy.categories.Name as 'Category Name' FROM bestbuy.departments 
INNER JOIN bestbuy.categories ON bestbuy.categories.DepartmentID = bestbuy.departments.DepartmentID 
WHERE bestbuy.categories.Name LIKE 'Appliances%' OR bestbuy.categories.Name LIKE 'Games%';
SELECT bestbuy.products.Name, bestbuy.products.Price, SUM(bestbuy.sales.quantity) AS TotalSold, bestbuy.sales.PricePerUnit*SUM(bestbuy.sales.quantity) AS 'Total Price' FROM bestbuy.products 
INNER JOIN bestbuy.sales ON bestbuy.products.ProductID = bestbuy.sales.ProductID 
WHERE bestbuy.products.Name LIKE 'Eagles: Hotel California%';
SELECT bestbuy.employees.EmployeeID, bestbuy.employees.FirstName, bestbuy.employees.LastName, bestbuy.products.Name, SUM(bestbuy.sales.Quantity) AS TotalSold, bestbuy.sales.ProductID FROM bestbuy.sales 
INNER JOIN bestbuy.employees ON bestbuy.employees.EmployeeID = bestbuy.sales.EmployeeID 
INNER JOIN bestbuy.products on bestbuy.products.ProductID = bestbuy.sales.ProductID 
GROUP BY bestbuy.employees.EmployeeID, bestbuy.products.ProductID 
ORDER BY bestbuy.employees.FirstName;
