# %%

import sympy

sympy.init_printing(num_columns=240,
                    use_unicode=False,
                    wrap_line=False)

# %%

# Example 1
print("Example 1")
print()

x, y, z = sympy.symbols(['x', 'y', 'z'])

A = sympy.Matrix([[1, 2, 3],
                  [4, 5, 6],
                  [7, 8, 10]])
b = sympy.Matrix([3, 6, 9])

print("A=\n{}".format(sympy.pretty(A)))
print()

print("b=\n{}".format(sympy.pretty(b)))
print()

sol = sympy.linsolve((A, b), [x, y, z])

print("b=\n{}".format(sympy.pretty(sol)))

# %%

# Example 2
print("Example 2")
print()

m1, m2, k1, k2, s, t = sympy.symbols(['m1', 'm2', 'k1', 'k2', 's', 't'])
x1, x2 = sympy.symbols(['x1', 'x2'])
f = sympy.symbols(['f'])

A = sympy.Matrix([[m1 * s ** 2 + k1 + k2, -k2],
                  [-k2, m2 * s ** 2 + k2]])
b = sympy.Matrix([1, 0])

print("A=\n{}".format(sympy.pretty(A)))
print()

print("b=\n{}".format(sympy.pretty(b)))
print()

sol = sympy.linsolve((A, b), [x1, x2])

x1 = sol.args[0]
x2 = sol.args[1]

print("b=\n{}".format(sympy.pretty(sol)))
print()

# %%

# Example 3
print("Example 3")
print()

m1, m2, k1, k2, s, t = sympy.symbols(['m1', 'm2', 'k1', 'k2', 's', 't'])
x1, x2 = sympy.symbols(['x1', 'x2'])
f = sympy.symbols(['f'])

A = sympy.Matrix([[m1 * s ** 2 + k1 + k2, -k2],
                  [-k2, m2 * s ** 2 + k2]])
b = sympy.Matrix([1, 0])

print("A=\n{}".format(sympy.pretty(A)))
print()

print("b=\n{}".format(sympy.pretty(b)))
print()

sol = sympy.linsolve((A, b), [x1, x2])
sol = sol.subs([(m1, 1.0), (m2, 1.0), (k1, 1.0), (k2, 1.0)])

x1 = sol.args[0][0]
x1 = sympy.simplify(x1)
x1 = x1.evalf()

print("X1(s)=\n{}".format(sympy.pretty(x1)))
print()

x2 = sol.args[0][1]
x2 = sympy.simplify(x2)
x2 = x2.evalf()

print("X2(s)=\n{}".format(sympy.pretty(x2)))
print()




