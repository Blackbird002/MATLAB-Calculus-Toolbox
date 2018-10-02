# MATLAB-Calculus-Toolbox
<p>
MATLAB toolbox that provides Transcendental Functions, Integration Functions and Differentiation Functions. Also includes interpolation and datafit functions and a system of linear equations solver.
</p>

# Transcendental Functions
<p>
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
</p>	
