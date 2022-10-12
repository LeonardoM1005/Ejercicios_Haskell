--Ejercicio 1
average3Numbers :: (Floating a) => a -> a -> a -> a
average3Numbers  x y z = (x+y+z)/3

--Ejercicio 2
isLastDigit3 :: (Integral a) => a -> Bool
isLastDigit3 x = (mod x 10) == 3

--Ejercicio 3
has3Digits :: (Integral a) => a -> Bool
has3Digits num = num > 99 && num < 1000

--Ejercicio 4
isNegative :: (Integral a) => a -> Bool
isNegative num = num < 0

--Ejercicio 5
sum2Digits :: (Integral a) => a -> a
sum2Digits num
    | num > 9 && num < 100 = residuo + entero
    | otherwise = error "No son dos digitos o no están bien definidos"
    where
      residuo = mod num 10
      entero = div num 10

--Ejercicio 6
even2Digits :: (Integral a) => a -> Bool
even2Digits num
    | num > 9 && num < 100 = even residuo && even entero 
    | otherwise = error "No son dos digitos o no está bien definido"
    where
      residuo = mod num 10
      entero = div num 10

--Ejercicio 7
isPrimeNumber :: (Integral a) => a -> Bool
isPrimeNumber num
    | elem num arreglo = True
    | otherwise = False
    where
      arreglo= [2,3,5,7,11,13,17,19]

--Ejercicio 8
isEvenAndPrimeNumber :: (Integral a) => a -> Bool
isEvenAndPrimeNumber num = num == 2

--Ejercicio 9
isMultiplo :: (Integral a) => a -> a -> Bool
isMultiplo num1 num2 = (mod num1 num2) == 0 

--Ejercicio 10
isEqual2Digits :: (Integral a) => a -> Bool
isEqual2Digits num
    | num > 9 && num < 100 = residuo == entero
    | otherwise = error "No son dos digitos o no están bien definidos"
    where
      residuo = mod num 10
      entero = div num 10

--Ejercicio 11
higher :: (Integral a) => a -> a -> a -> a
higher x y z 
  | x > y && y > z = x
  | y > x && y > z = y
  | otherwise = z

--Ejercicio 12
isEvenSum2Number :: (Integral a) => a -> a -> Bool
isEvenSum2Number x y = (mod (x+y) 2) == 0

--Ejercicio 13
sum2Digit2Number :: (Integral a) => a -> a -> a
sum2Digit2Number num1 num2
  | (num1 > 9 && num1 < 100) && (num2 > 9 && num2 < 100) = digito1 + digito2 + digito3 + digito4
  | otherwise = error "Uno de los números no es de dos digitos o está mal escrito"
  where 
  digito1 = div num1 10
  digito2 = mod num1 10
  digito3 = div num2 10
  digito4 = mod num2 10

--Ejercicio 14
sum3Digits :: (Integral a) => a -> a
sum3Digits num 
  | num > 99 && num < 1000 = numI + numM + numF
  | otherwise = error "El número no tiene 3 digitos o no está bien escrito"
  where
   numI = div num 100
   numM = div (mod num 100) 10
   numF = mod num 10

--Ejercicio 15
equals3Digits :: (Integral a) => a -> Bool
equals3Digits num 
  | num < 100 || num > 999 = error "El numero no tiene 3 digitos o no está bien escrito"
  | numI == numM && numM == numF =  True 
  | numI == numM || numM == numF || numI == numF = True 
  | otherwise = False
  where
   numI = div num 100
   numM = div (mod num 100) 10
   numF = mod num 10

--Ejercicio 16
positionHigher3Digits :: (Integral a) => a -> String
positionHigher3Digits  num 
  | num <= 99 || num >= 1000 = error "El numero no tiene 3 digitos o no está bien escrito"
  | numI > numF && numI > numM = "El numero mas grande esta en la posicion 1" 
  | numM > numI && numM > numF = "El numero mas grande esta en la posicion 2" 
  | numF > numI && numF > numM = "El numero mas grande esta en la posicion 3"
  where
   numI = div num 100
   numM = div (mod num 100) 10
   numF = mod num 10

--Ejercicio 17
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs

--Ejercicio 18
safeDivision :: (Eq p, Fractional p) => p -> p -> p
safeDivision x 0 = error "No se puede dividir entre cero"
safeDivision x y = x/y


--Ejercicio 20
distance :: (Floating a) => (a,a) -> (a,a) -> a
distance x y = sqrt((fst y - fst x)^2 + (snd y - snd x)^2)