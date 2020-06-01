# %%

import sympy
import numpy as np

np.set_printoptions(precision=3,
                    suppress=True)
sympy.init_printing(num_columns=240,
                    use_unicode=False)

# %%

# Setting up symbols

j, d, c = sympy.symbols(['j', 'd', 'c'])
s, t = sympy.symbols(['s', 't'])
theta = sympy.symbols(['theta'])

# Mesh equations

A = sympy.Matrix([j * s ** 2 + d * s + c])
b = sympy.Matrix([1])

# Substitute numerical values

A = A.subs([(j, 1.0), (d, 1.0), (c, 2.0)])
A = A.evalf()

# Solving simultaneous equations

sol = sympy.linsolve([A, b], [theta])

print("sol=\n{}".format(sympy.pretty(sol)))
print()

tf = sol.args[0][0]
tf = sympy.simplify(tf)
tf = sympy.expand(tf)

print("Theta(s)/F(s)=\n{}".format(sympy.pretty(tf)))
print()

# %%

# step respose

# Thetas = tf * 1 / s

# thetat = sympy.inverse_laplace_transform(Thetas, s, t)
# thetat = sympy.simplify(thetat)
# thetat = sympy.expand(thetat)

# print("theta(t)=\n{}".format(sympy.pretty(thetat)))
# print()