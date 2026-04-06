
cd /tmp

wget https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.5-linux-x86_64.tar.gz

tar -xzf julia-1.10.5-linux-x86_64.tar.gz

sudo mv julia-1.10.5 /opt/julia

sudo ln -s /opt/julia/bin/julia /usr/local/bin/julia

julia -e 'using Pkg; Pkg.add(["JSON", "JuMP", "GLPK", "CSV", "DataFrames", "HiGHS", "SCIP", "Cbc"])'
