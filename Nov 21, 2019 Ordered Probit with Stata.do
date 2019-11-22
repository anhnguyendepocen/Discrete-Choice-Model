* Nov 21, 2019 Ordered Probit with Stata
* Name: Jikhan Jeong
* Ref: Microeconometrics Using Stata Ch.15, p 526

tab y

* unrestricte model 

oprobit y x1 x2 x3, nolog $nolog_excluding_opt_process

predict p1oprobit p2oprobit p3oprobit p4oprobit p5oprobit
summarize x1 x2 x3 p1oprobit p2oprobit p3oprobit p4oprobit p5oprobit


* margines, outcome(value), depedent == value 
margins, dydx(*) predict(outcome(0)) atmean

* restricted model

oprobit y, nolog


