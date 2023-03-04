-- 数据类型
-- nil  空
-- boolean false 或 true 两个值
-- number 数字、双精度类型的浮点数
-- string 字符串
-- function 函数
-- userdata 任意存储在变量中的c结构体
-- thread 线程
-- table 表

-- 默认为全局变量 局部变量在前面加local
g_name = "yinwenfeng"
print(g_name)

g_name = nil
print(g_name)

-- --------------------------------------------------------
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string

-- ----------------------------------------------------------
test = nil
if (test == nil) then
    print("test is nil")
end

test = "string"
if (test) then
    print("test is not nil")
end
-------------------------------------------------------------

-- Lua 把 false 和 nil 看作是 false，其他的都为 true，数字 0 也是 true
if 0 then
    print("number 0 is true")
else
    print("number 0 is false")
end

