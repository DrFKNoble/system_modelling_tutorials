# %%

import sympy
import numpy as np

np.set_printoptions(precision=3,
                    suppress=True)
sympy.init_printing(num_columns=240,
                    use_unicode=False)

# %%

# Setting up symbols

m, d, c = sympy.symbols(['m', 'd', 'c'])
s, t = sympy.symbols(['s', 't'])
x = sympy.symbols(['x'])

# Mesh equations

A = sympy.Matrix([m * s ** 2 + d * s + c])
b = sympy.Matrix([1])

# Substitute numerical values

A = A.subs([(m, 1.0), (d, 1.0), (c, 2.0)])
A = A.evalf()

# Solving simultaneous equations

sol = sympy.linsolve([A, b], [x])

print("sol=\n{}".format(sympy.pretty(sol)))
print()

tf = sol.args[0][0]
tf = sympy.simplify(tf)
tf = sympy.expand(tf)

print("X(s)/F(s)=\n{}".format(sympy.pretty(tf)))
print()

# %%

# step respose

# Xs = tf * 1 / s

# xt = sympy.inverse_laplace_transform(Xs, s, t)
# xt = sympy.simplify(xt)
# xt = sympy.expand(xt)

# print("x(t)=\n{}".format(sympy.pretty(xt)))
# print()