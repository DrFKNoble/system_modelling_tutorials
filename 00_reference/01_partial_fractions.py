# %%

import sympy

sympy.init_printing(num_columns=240,
                    use_unicode=False,
                    wrap_line=False)

# Example 1
print("Case 1: Real Roots")

s = sympy.symbols('s')

expr = 2 / ((s + 1) * (s + 2))

pf = sympy.apart(expr)

print(sympy.pretty(pf))
print()

# %%

# Example 2
print("Case 2: Repeated Roots")

s = sympy.symbols('s')

expr = 2 / ((s + 1) * (s + 2) ** 2)

pf = sympy.apart(expr)

print(sympy.pretty(pf))
print()

# %%

# Example 3
print("Case 3: Complex or Imaginary Roots")

s = sympy.symbols('s')

expr = 3 / (s * (s ** 2 + 2 * s + 5))

pf = sympy.apart(expr)

print(sympy.pretty(pf))
print()



