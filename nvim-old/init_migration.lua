local function source_lua_files()
    for path in io.popen('cd ./lua/mr_bowtie/ && find . -type f'):lines() do 
        require(path)
    end
end

-- source_lua_files()
