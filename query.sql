Problem:
1. Find all loans of over $2000
2. Find the loan number for each loan of an amount greater than
$1200
3. Find the names of all customers who have a loan, an account, or both,
from the bank
4. Find the names of all customers who have a loan at the sea
branch.
5. Find the names of all customers who have a loan at the
sea branch but do not have an account at any branch of
the bank.
Solutions:
1.select * from loan where amount>200;
2.select loan_number from loan where amount>1200;
3.(select customer_name from depositor)union (select customer_name from borrower);
4.select customer_name from loan,borrower where loan.loan_number=borrower.loan_number and
branch_name='sea';
5.(select distinct customer_name from loan,borrower where borrower.loan_number=loan.loan_number and
branch_name='sea')except(select customer_name from depositor);