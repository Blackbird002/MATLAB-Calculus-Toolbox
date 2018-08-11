%-----------------------------------------------------------------------------------------------------	
%	Calculus Toolblox - "calcbox" version 1.0
%	Project #5
%	Math 451
%-----------------------------------------------------------------------------------------------------
%	*Transcendental Functions*
%
%	function: mysin(x)
%		This function uses the taylor series expansion of the sin function to return sin
%		accurate to 8 decimal places.
%		Sample: a = mysin(pi/2)
%			>>>a = 1.00000
%
%	function: mycos(x)
%		This uses mysin() and a minor adjustment to get the cos function evaluated at x.
%		Sample: a = mycos(pi/2)
%			>>>a = 1.0348e-011
%
%	function: mytan(x)
%		This uses mysin() and mycos() to get the tan function evaluated at x.
%		Sample: a = mytan(pi/2)
%			>>>a = 9.6635e+010
%
%	function: mysec(x)
%		This uses mycos() to get the sec function evaluated at x.
%		Sample: a = mysec(pi/2)
%			>>>a = 9.6635e+010 
%
%	function: mycsc(x)
%		This uses mysin() to get the csc function evaluated at x.
%		Sample: a = mycsc(pi/2)
%			>>>a = 1.0000
%
%	function: mycot(x)
%		This uses mytan() to get the cot function evaluated at x.
%		Sample: a = mycot(pi/2)
%			>>>a = 1.0348e-011
%
%	function: myexp(x)
%		This evaluates the exponential function e^x evaluated at x.
%		Sample: a = myexp(10)
%			>>>a = 2.2026e+004	
%------------------------------------------------------------------------------------------------------
%	*Integration Functions*	
%
%	function: simpint(f,a,b,oy) 
%		This function uses adaptive quadrature to approximate the
%		integral of a function f(x) using static quadrature rules
%		on adaptive subintervals of the integration domain. This 
%		one uses Simpson's rule and it evaluates the definite 
%		integral. (Area under the curve) The function is passed into the function
%		as a anonymous function and it's stored as "f". The integration bounds
%		go from "a" to "b". The old y values go into "oy", which is used during 
%		computation. 
%		Sample: a = simpint(@(x) sin(x),0,pi)
%			>>>a = 2.0000
%
%	function: trapint(f,a,b,oy) 
%		This function uses adaptive quadrature to approximate the
%		integral of a function f(x) using static quadrature rules
%		on adaptive subintervals of the integration domain. This 
%		one uses the trapeziod rule and it evaluates the definite 
%		integral. (Area under the curve) The function is passed into the function
%		as a anonymous function and it's stored as "f". The integration bounds
%		go from "a" to "b". The old y values go into "oy", which is used during 
%		computation. 
%		Sample: a = trapint(@(x) sin(x),0,pi)
%			>>>a = 2
%
%	function: defintegral(f,a,b,'type')
%		This function calls either simpint() or trapint() depending on what is
%		passed into the 'type' variable. Choice are: 'simp' or 'trap'. If a 
%		type is not specified, simpint() will be chosen by default. This function
%		evaluates the definite integral of f(x).
%		Sample: a = defintegral(@(x) cos(x),0,pi,'simp')
%			>>>a = 1.1626e-016
%
%	function: indefintegral(c)
%		This function finds the indefinite integral of a polynomial* with coefficients
%		stored in the vector c. The constant of integration is 0. A vector is returned
%		containing the coefficients of the polynomial after the integral is applied.
%		Sample: c = indefintegral([2 1 -3])
%			>>>c = 0.66667   0.50000  -3.00000   0.00000
%------------------------------------------------------------------------------------------------------
%	*Differentiation Functions*	
%
%	function: derivative(c) or derivative(f,a)
%		This function first checks for the number of inputs. If only a single input "c"
%		is given, then the function will return the coefficients of the polynomial after
%		taking the derivative. The c input is a vector of the coefficients of the polynomial.
%		If two inputs are given, "f" a anonymous function and "a", a real constant, then the
%		instantaneous derivative is returned of the function f'(a). 
%		Sample: a = derivative([2 3 4 2])
%			>>>a = 6 6 4 
%		Sample: a = derivative(@(x) 2*x^2 + 5*x + 2, 2)
%			>>>a = 13.000
%------------------------------------------------------------------------------------------------------
%	*Interpolation, Datafit, System of Linear Equations Functions*
%
%	function: linearsolver(A,b)
%		This function solves systems of linear equations. ->  Ac = b   (solves for c)
%		It takes the coefficients matrix A (the left part of the system of equations), vector b, the
%		right part after the equals sign and it solves for c. This function calls gaussbacksolve() to
%		perform gaussian elimination to solve the system. This function returns "c" as a vector.
%		Vector b has to be a column* vector.
%		Sample:	c = linearsolver([1 -3 3;5 3 1; 2 2 2],[22 45 12]')
%			>>>c=
%					12.1000
%					-4.7000
%					-1.4000
%		
%	function: gaussbacksolve(A)
%		This function performs gaussian elimination with pivoting and backsolve on an augmented
%		matrix A. Please make sure that the system is linearly independent. It returns matrix c
%		after performing gaussian elimination with pivoting and backsolve. 
%		Sample: A = gaussbacksolve([3 12 1 2.36; 12 0 2 5.26; 0 2 3 2.77])
%			>>>A = 
%					12.00000    0.00000    2.00000    0.29000
%				 	 0.00000   12.00000    0.50000    0.05000
%				 	 0.00000    0.00000    2.91667    0.89000
%
%
%	function: interpolant(dx,dy)
%		This function returns the coefficients of the polynomial interpolant for the data points
%		dx and dy. It uses the linearsolver() function to solve for the coefficients within the
%		interpolant. 
%		Sample: 
%			>>>dx = linspace(0,3,5);
%			>>>dy = sin(dx);
%			>>>c = interpolant(dx',dy');
%		 	>>>c =   0.03783
%				-0.23718				
%				 0.05957			
%				 0.98163
%				 0.00000				
%					
%	function: datafit(dx,dy,n)
%		This function returns the n coefficients of the least squares polynomial of n-terms
%		for the data points dx and dy. If one desires a 3rd-degree polynomial, set n = 4.
%		In general, a k degree polynomial needs to have n set to n = k+1. The best datafit
%		least squares polynomial generally has n set to half of the number of data points. 
%		Sample:
%			dx = linspace(0,3,5)
%			dy = sin(dx)
%			c = datafit(dx,dy,3) %2nd degree polynomial
%
%------------------------------------------------------------------------------------------------------