--[[ 数据类型
nil  空
boolean false 或 true 两个值
number 数字、双精度类型的浮点数
string 字符串
function 函数
userdata 任意存储在变量中的c结构体
thread 线程
table 表
--]]

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

-- nil----------------------------------------------------------
test = nil
if (test == nil) then
    print("test is nil")
end

test = "string"
if (test) then
    print("test is not nil")
end
-------------------------------------------------------------

-- boolean-------------------------------------------------------------
-- Lua 把 false 和 nil 看作是 false，其他的都为 true，数字 0 也是 true
if 0 then
    print("number 0 is true")
else
    print("number 0 is false")
end

-- string---------------------------------------------------------------
str1 = "yinwenfeng"
str2 = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(str1)
print(str2)

-- 数字字符串和数字做运算时，会尝试转换为数字
str1 = "1"
num1 = 1
print(str1 + num1)

-- 字符串拼接..
str1 = "string1"
str2 = "string2"
print("strcat:  ", str1, str2)

-- table -----------------------------------------------------------------
-- 在 Lua 里，table 的创建是通过"构造表达式"来完成，
-- 最简单构造表达式是{}，用来创建一个空表。
-- 也可以在表里添加一些数据，直接初始化表

-- 创建一个空的 table
table1 = {}

--  直接初始化表
table2 = {"app1", "app2", "app3"}

-- 赋值
-- * table是一个关联数组，数组的索引可以是数字或者字符串
table1 = {}
table1["key1"] = "value1"
table1[1] = 20

for index, value in pairs(table1) do
    print(index.." : "..value)
end

-- * 在 Lua 里表的默认初始索引一般以 1 开始
table1 = {"app1", "app2", "app3"}

for key, value in pairs(table1) do
    print("key  ",key)
end

-- function ------------------------------------------------------------------------------------
-- 在 Lua 中，函数是被看作是"第一类值（First-Class Value）"
-- * 函数可以存在变量里:

