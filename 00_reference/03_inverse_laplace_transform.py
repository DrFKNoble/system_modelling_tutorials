# %%

import sympy

sympy.init_printing(num_columns=240,
                    use_unicode=False,
                    wrap_line=False)

# %%

# Definition
print("Definition")
print()

A, s, t = sympy.symbols(['A', 's', 't'])
sigma = sympy.symbols('sigma', real=True)

F = sympy.Function('F')

f = (1 / (2 * sympy.pi * sympy.I)) * sympy.integrate(F(s) * sympy.exp((s * t)), (s, sigma - sympy.I * sympy.oo, sigma + sympy.I * sympy.oo))

print("f(t)=\n{}".format(sympy.pretty(f)))
print()

# %%

# Example 1
print("Example 1")

s, t = sympy.symbols(['s', 't'])
w = sympy.symbols('w', real=True)

expr = 2 / ((s + 1) * (s + 2))

i_expr = sympy.inverse_laplace_transform(expr, s, t)

i_expr = sympy.simplify(i_expr)
i_expr = sympy.expand(i_expr)

print(sympy.pretty(i_expr))
print()

# %%

# Example 2
print("Example 2")

s, t = sympy.symbols(['s', 't'])

expr = 2 / ((s + 1) * (s + 2) ** 2)

i_expr = sympy.inverse_laplace_transform(expr, s, t)

i_expr = sympy.simplify(i_expr)
i_expr = sympy.expand(i_expr)

print(sympy.pretty(i_expr))
print()

# %%

# Example 3
print("Example 3")

s, t = sympy.symbols(['s', 't'])

expr = 3 / (s * (s ** 2 + 2 * s + 5))

i_expr = sympy.inverse_laplace_transform(expr, s, t)

i_expr = sympy.simplify(i_expr)
i_expr = sympy.expand(i_expr)

print(sympy.pretty(i_expr))
print()



