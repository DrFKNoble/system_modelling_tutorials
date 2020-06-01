# %%

import sympy
import numpy as np

np.set_printoptions(precision=3,
                    suppress=True)
sympy.init_printing(num_columns=240,
                    use_unicode=False)

# %%

# Setting up symbols

j1, d1, c1, j2, d2, c2 = sympy.symbols(['j1', 'd1', 'c1', 'j2', 'd2', 'c2'])
s, t = sympy.symbols(['s', 't'])
x1, x2 = sympy.symbols(['x1', 'x2'])

# Mesh equations

A = sympy.Matrix([[j1 * s ** 2 + d1 * s + (c1 + c2), -c2],
                  [-c2, j2 * s ** 2 + c2]])
b = sympy.Matrix([0, 1])

# Substitute numerical values

A = A.subs([(j1, 1.0), (d1, 1.0), (c1, 2.0), (j2, 1.0), (d2, 1.0), (c2, 2.0)])
A = A.evalf()

# Solving simultaneous equations

sol = sympy.linsolve([A, b], [x1, x2])

print("sol=\n{}".format(sympy.pretty(sol)))
print()

tf = sol.args[0][1]
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