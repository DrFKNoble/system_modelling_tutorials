# %%

import sympy
import numpy as np

np.set_printoptions(precision=3,
                    suppress=True)
sympy.init_printing(num_columns=240,
                    use_unicode=False)

# %%

# Setting up symbols

K, v_in, v_out, R1, R2 = sympy.symbols(['K', 'v_in', 'v_out', 'R1', 'R2'])
s, t = sympy.symbols(['s', 't'])

# Equation

# v_out = K * (v_pos - v_neg)

expr = sympy.Eq(- R2 / R1 * v_in, v_out)

print("expr=\n{}".format(sympy.pretty(expr)))
print()

# Substitute numerical values

expr = expr.subs([(K, 10e3), (R1, 1e3), (R2, 1e3)])

print("v_out=\n{}".format(sympy.pretty(expr)))
print()
