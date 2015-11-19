function calculate(coefficients, x)
  p=coefficients[1]
  for i=2, #coefficients do
	p = p+coefficients[i]*(x^(i-1))
  end
  return p
end

print("how many coefficients should be read?")
size = io.read("*n")
print("reading "..size.." coefficients")
c = {}
for i=1, size do
  c[i]=io.read("*n")
end

print("please enter x values")
x = io.read("*n")
result = calculate(c, x)
print("f("..x..") = " ..result)

