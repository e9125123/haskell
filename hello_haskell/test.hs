sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

half x = x / 2
square x = x * x

area r = square r * pi
