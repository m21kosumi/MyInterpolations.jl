module MyInterpolations
function my_lin_interp(grid, vals)
    function func(x)
        i = searchsortedfirst(grid, x)
        x in grid[i-1]:grid[i]
        return vals[i-1] + (vals[i]-vals[i-1])*(x - grid[i-1])/(grid[i] - grid[i-1])
    end
    return func
end
export my_lin_interp
end