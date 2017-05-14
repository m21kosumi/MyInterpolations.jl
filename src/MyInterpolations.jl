module MyInterpolations
function my_lin_interp(grid::Array, vals::Array)
    function func(x::Real)
        if x < grid[1]
            print("error")
        end
        if x > grid[end]
            print("error")
        end
        if grid[1] <= x <= grid[end]
        i = searchsortedfirst(grid, x)
        x in grid[i-1]:grid[i]
        return vals[i-1] + (vals[i]-vals[i-1])*(x - grid[i-1])/(grid[i] - grid[i-1])
        end
    end
    return func
end
export my_lin_interp
end