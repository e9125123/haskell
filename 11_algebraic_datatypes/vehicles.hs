data Price =
  Price Integer deriving (Eq, Show)

data Manufacturer =
  Mini
  | Mazda
  | Tata
  deriving (Eq, Show)

data Airline =
  PapuAir
  | CatapultsR'Us
  | TakeYourChancesUnited
  deriving (Eq, Show)

data Size =
  Size Integer deriving (Eq, Show)

data Vehicle = Car Manufacturer Price
  | Plane Airline Size
  deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane PapuAir (Size 140)

isCar :: Vehicle -> Bool
isCar x = case x of
            Car _ _ -> True
            _ -> False

isPlane :: Vehicle -> Bool
isPlane (Plane _ _) = True
isPlane (Car _ _) = False


areCars :: [Vehicle] -> [Bool]
areCars = map isCar
--areCars :: [Vehicle] -> Bool
--areCars = foldr ((&&) . isCar) True

getManu :: Vehicle -> Manufacturer
getManu (Car m _) = m
--getManu _ = undefined