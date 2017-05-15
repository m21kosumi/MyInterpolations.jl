
using Plots
using QuantEcon
using MyInterpolations
plotlyjs()

li = my_lin_interp(grid,vals)
grid = -7:7
vals = sin.(grid)

plot(grid, li, label="linear")
scatter!(grid, vals, label="sampled data",markersize=4)

grid = -7:7
vals = sin.(grid)

using QuantEcon
using Plots
using MyInterpolations
plotlyjs()

h(x) = 2 .* cos.(6x) .+ sin.(14x) .+ 2.5
c_grid = 0:.2:1
n = length(c_grid)

Af = my_lin_interp(c_grid, h(c_grid))

h_grid = linspace(0, 1, 150)

plot(h_grid, h, color=:blue, linewidth=2, alpha=0.8, label="true function")
plot!(h_grid, Af.(h_grid), color=:green, linewidth=2, alpha=0.8,
      label="linear approximation", legend=:top, grid=false)
N = repmat(c_grid, 1, 2)'
heights = [zeros(1,n); h(c_grid)']
plot!(N, heights, color=:black, linestyle=:dash, alpha=0.5, label="")


