-- Lua 语言提供了以下几种循环处理方式:while for repeat..until
-- * while
function Sleep(n)
    local t0 = os.clock()
    while os.clock() - t0 <= n do end
end

function test_while()
    local i = 0
    while i < 10 do
        print("cycle "..i)
        Sleep(1)
        i = i+1
    end
end

--  * for
-- for var=exp1, exp2, exp3 do ...end
-- var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var, 并执行一次 "执行体"(exp2)
-- exp3 是可选的，如果不指定，默认为1。
function test_for()
    for i = 1, 10 do
        print(i)
    end
end

-- 泛型for循环
-- pairs: 迭代 table，可以遍历表中所有的 key 可以返回 nil
-- ipairs: 迭代数组，只能便利下标。不能返回 nil,如果遇到 nil 则退出，
function test_for_pairs()
    table1 = {"v1", "v2", "v3"}

    for key, value in pairs(table1) do
        print(key.." = "..value)
    end

end

function main()
    test_for_pairs()
end


main()