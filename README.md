# Discrete-Choice-Model
Econometrics for discrete choice    

Plan to do (13 Oct, 2019)  

o. binary logit scrach (Done)  
1. binary probit scratch done (Done)  
2. order probit scratch (Oct, 2019)  
3. mixed logit with mlogit for application with mlogit in R (Done)  
3.1 mixed logit scratch with matlab (Oct, 2019)  
4. mixed ordered probit scratch (when the price is log normal and error term must follow normal) with Gauss, (Oct)  
4.1 latent class logit with stata lclogit, (Oct)  
5. BLP (matlab, r, python(pyBLP)) (Nov)  
6. Bayesian Discrete Choice with matlab (Nov)  
6.1 Bayesian Discrete Choice with pyro (Nov)  
7. VI Bayesian Discrete Choice (Dec)  

Additional work requires : Boostrap with R for CI  

reference: https://rpubs.com/sallychen/313125  
reference: https://eml.berkeley.edu/books/choice2.html  
reference: http://www.urfie.net/index.html
for latex equations: https://www.codecogs.com/latex/eqneditor.php  

* z-score for probit  
ref: http://logisticregressionanalysis.com/1577-what-are-z-values-in-logistic-regression/  

* pvalue for z-score and t-test  
ref: https://www.cyclismo.org/tutorial/R/pValues.html  

# *optim* : General-purpose optimization : "optimization method is a big matter"

* optim(par, fn, gr, method =)

* par = Initial values for the parameters to be optimized over.

* fn = a function to be minimized, this is the reason why using negative LL in the above

* *"BFGS"* is a quasi-Newton method

* *"Nelder-Mead"* Nelder and Mead (1965), that uses only function values and is robust but   relatively slow. It will work reasonably well for non-differentiable functions.
