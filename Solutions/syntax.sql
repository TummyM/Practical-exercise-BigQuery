SELECT
  *
FROM
  `retail-479016`.Sales.Data
WHERE
  `Total Amount` > (
    SELECT
      AVG(`Total Amount`)
    FROM
      `retail-479016`.Sales.Data
  );
  SELECT SUM(`Total Amount`) AS Total_revenue
  FROM `retail-479016.Sales.Data`;

SELECT DISTINCT`Product Category`
FROM `retail-479016.Sales.Data`;

SELECT `Product Category`,
       SUM(`Quantity`) AS Total_quantity
FROM `retail-479016.Sales.Data`
GROUP BY `Product Category`;


SELECT `Customer ID`,
       `Age`,
       CASE 
       WHEN Age <30 THEN 'Youth'
       WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
       WHEN Age >=60 THEN 'Senior'
       ELSE 'Unkown'
       END AS Age_group
    FROM `retail-479016.Sales.Data`;

SELECT `Gender`,
       COUNT(CASE WHEN `Total Amount`>=500 THEN 1 END) AS High_value_transactions
       FROM `retail-479016.Sales.Data`
       GROUP BY `Gender`;

SELECT `Product Category`,
       SUM(`Total Amount`) AS Total_revenue
   FROM `retail-479016.Sales.Data`
    GROUP BY `Product Category`
    HAVING SUM(`Total Amount`)>5000;
    
SELECT `Transaction ID`,
        `Price per unit`,
        CASE
         WHEN `Price per unit`<60 THEN 'Cheap'
         WHEN `Price per unit` BETWEEN 60 AND 200 THEN 'Moderate'
         WHEN `Price per unit`>200 THEN 'Expensive' 
           ELSE 'Unknown'
         END AS Unit_cost_category
     FROM `retail-479016.Sales.Data`;

     SELECT`Customer ID`,
           `Age`,
           `Total Amount`,
           CASE
           WHEN `Total Amount`>=1000 THEN 'High'
           ELSE 'Low'
           END AS Standard_level
        FROM `retail-479016.Sales.Data`
        WHERE Age>=40;













