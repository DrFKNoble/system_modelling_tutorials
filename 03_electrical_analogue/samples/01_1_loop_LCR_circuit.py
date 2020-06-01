# %%

import sympy
import numpy as np

np.set_printoptions(precision=3,
                    suppress=True)
sympy.init_printing(num_columns=240,
                    use_unicode=False)

# %%

# Setting up symbols

l, c, r = sympy.symbols(['l', 'c', 'r'])
s, t = sympy.symbols(['s', 't'])
i = sympy.symbols(['i'])

# Mesh equations

A = sympy.Matrix([l * s + r + 1 / (c * s)])
b = sympy.Matrix([1])

# Substitute numerical values

A = A.subs([(l, 1.0), (c, 0.5), (r, 1.0)])
A = A.evalf()

# Solving simultaneous equations

sol = sympy.linsolve([A, b], [i])

print("sol=\n{}".format(sympy.pretty(sol)))
print()

tf = sol.args[0][0]
tf = sympy.simplify(tf)
tf = sympy.expand(tf)

print("I(s)/V_in(s)=\n{}".format(sympy.pretty(tf)))
print()

# V_capacitor

v_cap = 1 / (c * s) * tf
v_cap = v_cap.subs([(c, 0.5)])
v_cap = v_cap.evalf()

print("V_cap(s)/V_in(s)=\n{}".format(sympy.pretty(v_cap)))
print()

# %%

# step respose

# Thetas = tf * 1 / s

# thetat = sympy.inverse_laplace_transform(Thetas, s, t)
# thetat = sympy.simplify(thetat)
# thetat = sympy.expand(thetat)

# print("theta(t)=\n{}".format(sympy.pretty(thetat)))
# print()