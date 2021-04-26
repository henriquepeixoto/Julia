42

4.4

typeof(42)

typeof(4.4)

3 + 6 * 7

3/56

grade = 34

grade

println(grade)

rank = 4

grade + rank

typeof(rank)

pi

100 % 3

2 ^ 3

3 ^ 23

# This is comment

#=  1st
2nd
Third
=#

s1 = "This is Julia"

typeof(s1)

s2 = """ This is 1st line
This is 2nd
This is 3rd"""

println(s2)

It "is" raining outside"

s3 = """It "is" raining outside" """

println(s3)

println("My grade is 12")

grade

println("My grade is $grade")

println("My grade is $(grade+5)")

m1 = "I love "
m2 = "Julia";

string(m1, m2)

string(m1, " Classic " ,m2)

m2 ="Julia "

m2 ^ 100

"Ankit " ^ 100

m1

m1[1]

m1[3]

m1[start index: end index]

m1[3:6]

ch = 'm'

typeof(ch)

'md'

[3, 5, 9]

[3 , 5, 9] + [1, 2, 3]

arr = ["Hello", 2, 45.7, true]

length(arr)

typeof(arr)

minimum([3, 5, 9])
maximum([3, 5, 9])

arr

arr[3]

arr[2: 4]

arr[4:4]

zeros(4)
ones(3)

arr

println(arr)

push!(arr, "34")

println(arr)

sort([3, 5, -1])

range(1, stop=100)
range(-10, step=5, length=10)
range(-10, length=10)

arr

arr1 = arr

arr1[1] = "Bye"

println(arr1 ,  arr)

arr2 = copy(arr)

println(arr ,  arr2)

arr2[1] = "Julia"

println(arr ,  arr2)

arr

in("2", arr)

t1 = (3, 6, true)

typeof(t1)

t1[2]

t1[2] = "hello"

length(t1)



#=
John - 555
Alice - 111
Bob = 333
=#
phonebook = Dict("John" => "555", "Alice" => "111", "Bob" => "333")

keys(phonebook)

values(phonebook)

phonebook["John"]

for (k, v) in phonebook
    println("$k , $v")
end

collect(keys(phonebook))

#haskey(phonebook, "John")
haskey(phonebook, "John1")

s1 = Set([1,3,6, 6])

s2 = Set([3,6, 4, 3])

union(s1, s2)

intersect(s1, s2)

issubset(s1, s2)



N= 34

N = -5
if N > 0
    println("N is +ve")
else
    println("N is -ve")
end

N = 34

N = -5
if N > 25
    println("Number is greater than 25")
elseif (N > 0 && N < 25)
    println("Number is between 0 and 25")
else
    println("Number is -ve")
end

for i = 1:5
    println(i)
end

for i = 1:5, j = 1:5
    println(i , " : ", j)
end

arr = [3, 5, "Hello"]

for val in arr
    println(val)
end

for i = 1:5
    println(i)
end

i = 1
while i <= 5
    println(i)
    i = i + 1
end

function welcome()
    println("Hello Ankit")
end

welcome()

function welcome1(name)
    println("Hello $name")
end

welcome1()

#welcome1("Ankit")
welcome1("Julia")

welcome2(name) = println("Hello $name")

welcome2("Julia")

welcome3 = name -> println("Hello $name")

welcome3("data")

function add(x,y)
    z = x + y
    return z
end

add(4,6)

arr =[ 2,3,6,0, -4]

sort(arr)

arr

sort!(arr)

arr

function f1(x)
    x^2
end

arr1 = [1,3,7,0]

f1(arr1)

map(f1 , arr1)

using Pkg

Pkg.installed()

Pkg.rm("Statistics")

Pkg.installed()

Pkg.add("Statistics")

Pkg.installed()

using Statistics

mean([3, 7, 9])

using Random

using Pkg
Pkg.add("Random")

rand(3,4)

randn(10,2)

randstring()

randstring('A':'Z', 50)

v1 = Vector(1:10)

reshape(v1, (2,5))

ones(3,5)

zeros(2,5, 6)

using LinearAlgebra

I(10)

M = [2 4 5;1 2 3;6 7 0]

typeof(M)

size(M)

M[1,:]
M[:, 2]

N = [1 2 3;4 5 6; 7 8 9]

[M N]

[M;N]

hcat(M, N)

vcat(M, N)

M

transpose(M)

tr(M)

det(M)

inv(M)

M

UpperTriangular(M)
LowerTriangular(M)

eigvecs(M)
eigvals(M)



using Pkg

Pkg.add("DataFrames")

using DataFrames

DataFrame()

DataFrame(A = 1:4 , B = rand(4))
DataFrame(rand(10,3))

X1 = DataFrame(rand(10,3))
Matrix(X1)

Pkg.add("Tables")
using Tables

tb = Tables.columntable(X1)

typeof(tb)

tb.x1
tb.x2
tb.x3

X1

names(X1)

size(X1)

size(X1,1), size(X1,2)

nrow(X1)
ncol(X1)

describe(X1)
describe(X1, cols=1:2)

eltype.(eachcol(X1))

first(X1)
first(X1, 5)

last(X1)
last(X1, 2)

X1

#X1[ Row , Column ]
X1[1:7, 1:2]
X1[1:7, :]
X1[:, 3]

X1[: , Between(:x1, :x3) ]

X1.x4 = rand(10)

X1

using DataFrames

df = DataFrame(A=[true, false, true], B=[23, 45, 67], C=['a', 'c', 'b'])

Pkg.add("CSV")

using CSV

CSV.write("df.csv", df)

new_df = CSV.read("df.csv")

Pkg.add("Serialization")

using Serialization

open("df.bin", "w") do io
    serialize(io, df)
end

open(deserialize, "df.bin")

Pkg.add("JSONTables")

using JSONTables

open(io -> arraytable(io, df), "df.json", "w")

open(jsontable, "df.json") |> DataFrame

M1 = DataFrame(rand(5,4))

rename(M1, :x1 => :c1)

M1

rename!(M1, :x1 => :c1)

M1

rename(M1, [:c1, :c2, :c3, :c4])

rename(M1, string.('a':'d'))

M2 = DataFrame(rand(5,4))

hcat(M1, M2, makeunique=true)

#vcat(M1, M2)
rename!(M1, :c1=>:x1)

vcat(M1, M2)

[M1 DataFrame(A=[1,2,3,4,5])]

insertcols!(M1, 3, newcol=[1,2,3,4,5])

M1

M1[:, [:x2, :x3]]

cp_M1 = copy(M1)

M1 == cp_M1

sort(M1, :x1)

deleterows!(M1, 4)

filter( r -> r.x1 > 0.6 ,M1)


