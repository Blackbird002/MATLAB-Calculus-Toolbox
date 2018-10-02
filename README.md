# MATLAB-Calculus-Toolbox
<p>
MATLAB toolbox that provides Transcendental Functions, Integration Functions and Differentiation Functions. Also includes interpolation and datafit functions and a system of linear equations solver.
</p>

# Transcendental Functions
	function: mysin(x)
		This function uses the taylor series expansion of the sin function to return sin
		accurate to 8 decimal places.
		Sample: a = mysin(pi/2)
			>>>a = 1.00000

	function: mycos(x)
		This uses mysin() and a minor adjustment to get the cos function evaluated at x.
		Sample: a = mycos(pi/2)
			>>>a = 1.0348e-011

	function: mytan(x)
		This uses mysin() and mycos() to get the tan function evaluated at x.
		Sample: a = mytan(pi/2)
			>>>a = 9.6635e+010

	function: mysec(x)
		This uses mycos() to get the sec function evaluated at x.
		Sample: a = mysec(pi/2)
			>>>a = 9.6635e+010 

	function: mycsc(x)
		This uses mysin() to get the csc function evaluated at x.
		Sample: a = mycsc(pi/2)
			>>>a = 1.0000

	function: mycot(x)
		This uses mytan() to get the cot function evaluated at x.
		Sample: a = mycot(pi/2)
			>>>a = 1.0348e-011

	function: myexp(x)
		This evaluates the exponential function e^x evaluated at x.
		Sample: a = myexp(10)
			>>>a = 2.2026e+004

# Integration Functions
	function: simpint(f,a,b,oy) 
		This function uses adaptive quadrature to approximate the
		integral of a function f(x) using static quadrature rules
		on adaptive subintervals of the integration domain. This 
		one uses Simpson's rule and it evaluates the definite 
		integral. (Area under the curve) The function is passed into the function
		as a anonymous function and it's stored as "f". The integration bounds
		go from "a" to "b". The old y values go into "oy", which is used during 
		computation. 
		Sample: a = simpint(@(x) sin(x),0,pi)
			>>>a = 2.0000

	function: trapint(f,a,b,oy) 
		This function uses adaptive quadrature to approximate the
		integral of a function f(x) using static quadrature rules
		on adaptive subintervals of the integration domain. This 
		one uses the trapeziod rule and it evaluates the definite 
		integral. (Area under the curve) The function is passed into the function
		as a anonymous function and it's stored as "f". The integration bounds
		go from "a" to "b". The old y values go into "oy", which is used during 
		computation. 
		Sample: a = trapint(@(x) sin(x),0,pi)
			>>>a = 2

	function: defintegral(f,a,b,'type')
		This function calls either simpint() or trapint() depending on what is
		passed into the 'type' variable. Choice are: 'simp' or 'trap'. If a 
		type is not specified, simpint() will be chosen by default. This function
		evaluates the definite integral of f(x).
		Sample: a = defintegral(@(x) cos(x),0,pi,'simp')
			>>>a = 1.1626e-016

	function: indefintegral(c)
		This function finds the indefinite integral of a polynomial* with coefficients
		stored in the vector c. The constant of integration is 0. A vector is returned
		containing the coefficients of the polynomial after the integral is applied.
		Sample: c = indefintegral([2 1 -3])
			>>>c = 0.66667   0.50000  -3.00000   0.00000

