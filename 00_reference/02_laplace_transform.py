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

f = sympy.Function('f')

F = sympy.integrate(f(t) * sympy.exp((-s * t)), (t, 0, sympy.oo))

print("F(s)=\n{}".format(sympy.pretty(F)))
print()

# %%

# Example 1
print("Example 1")
print()

ft = A

print("f(t)=\n{}".format(sympy.pretty(f)))
print()

Fs = sympy.integrate(ft * sympy.exp((-s * t)), (t, 0, sympy.oo))

print("F(s)=\n{}".format(sympy.pretty(Fs)))
print()

# %%

# Example 2
print("Example 2")
print()

A, s, t = sympy.symbols(['A', 's', 't'])

ft = A 

print("f(t)=\n{}".format(sympy.pretty(ft)))
print()

Fs = sympy.laplace_transform(ft, t, s)

print("F(s)=\n{}".format(sympy.pretty(Fs)))
print()

# %%

# Example 3
print("Example 3")
print()

A, s, t = sympy.symbols(['A', 's', 't'])

ft = A * t 

print("f(t)=\n{}".format(sympy.pretty(ft)))
print()

Fs = sympy.laplace_transform(ft, t, s)

print("F(s)=\n{}".format(sympy.pretty(Fs)))
print()

# %%

# Example 4
print("Example 4")
print()

A, a, s, t = sympy.symbols(['A', 'a', 's', 't'])

ft = A * sympy.exp(-a * t)

print("f(t)=\n{}".format(sympy.pretty(ft)))
print()

Fs = sympy.laplace_transform(ft, t, s)

print("F(s)=\n{}".format(sympy.pretty(Fs)))
print()

# %%

# Example 5
print("Example 5")
print()

a0, a1, a2, s, t = sympy.symbols(['a0', 'a1', 'a2', 's', 't'])
x, f = sympy.symbols(['x', 'f'], cls=sympy.Function)

expr = sympy.Eq(sympy.diff(x(t), t, 1), f(t))

print("expr=\n{}".format(sympy.pretty(expr)))
print()

tf = sympy.laplace_transform(expr, t, s)

print("F(s)=\n{}".format(sympy.pretty(tf)))
print()