module Linting

using FileIO

function lintfile(UserEnteredFile::String)
    f = open(UserEnteredFile)
    linesFromFIle = readlines(f)

    counter = 1

    for line in linesFromFIle
        if occursin("function", line)
            println("Found a function!")
        end
        println("$counter $line")
        counter += 1
    end
end
lintfile("/Users/logankilpatrick/.julia/dev/Linting.jl/src/Linting.jl")

end # module
