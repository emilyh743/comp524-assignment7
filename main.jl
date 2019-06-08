# factorial from https://riptutorial.com/julia-lang/example/10468/imperative-factorial
# fibonacci from https://rosettacode.org/wiki/Fibonacci_sequence

function make_cache(function_name)
  dict = Dict()
  my_stack = Int64[]

  function eval(input)
    solution = function_name(input)
    dict[input] = solution
    return dict[input]
    #println(dict)
  end

  function check(input)
    if input in keys(dict)
      return true
    else
      return false
    end
  end

  return(eval,check)
end

function fib(input)
  solution = input < 2 ? input : fib(input-1) + fib(input-2)
end

function fact(function_name)
      fact = one(n)
    for m in 1:n
        fact *= m
    end
    return fact
end
