# %%

import sympy
import numpy as np

np.set_printoptions(precision=3,
                    suppress=True)
sympy.init_printing(num_columns=240,
                    use_unicode=False)

# %%

# Setting up symbols

l1, c1, r1, l2, c2, r2, r3 = sympy.symbols(['l1', 'c1', 'r1', 'l2', 'c2', 'r2', 'r3'])
s, t = sympy.symbols(['s', 't'])
i1, i2 = sympy.symbols(['i1', 'i2'])

# Mesh equations

A = sympy.Matrix([[l1 * s + (r1 + r2) + 1 / (c1 * s), -r2],
                  [-r2, l2 * s + (r2 + r3) + 1 / (c2 * s)]])
b = sympy.Matrix([1, 0])

# Substitute numerical values

A = A.subs([(l1, 1.0), (c1, 0.5), (r1, 1.0), (l2, 1.0), (c2, 0.5), (r2, 1.0), (r3, 1.0)])
A = A.evalf()

# Solving simultaneous equations

sol = sympy.linsolve([A, b], [i1, i2])

print("sol=\n{}".format(sympy.pretty(sol)))
print()

tf = sol.args[0][1]
tf = sympy.simplify(tf)
tf = sympy.expand(tf)

print("I(s)/V_in(s)=\n{}".format(sympy.pretty(tf)))
print()

# V_capacitor

v_cap2 = 1 / (c2 * s) * tf
v_cap2 = v_cap2.subs([(c2, 0.5)])
v_cap2 = v_cap2.evalf()

print("V_cap2(s)/V_in(s)=\n{}".format(sympy.pretty(v_cap2)))
print()

# %%

# step respose

# Thetas = tf * 1 / s

# thetat = sympy.inverse_laplace_transform(Thetas, s, t)
# thetat = sympy.simplify(thetat)
# thetat = sympy.expand(thetat)

# print("theta(t)=\n{}".format(sympy.pretty(thetat)))
# print()