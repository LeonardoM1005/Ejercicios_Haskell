--Definir la función firstToEnd tal que (firstToEnd xs) es una lista donde el primer
--elemento de xs, pasa a ser el último elemento de la nueva lista
------------------------------------EJERCICIO 1-------------------------------------
firstToEnd :: (Eq a) => [a] -> [a]
firstToEnd (x:xs) = xs ++ [x]

--Definir la función minAndMax tal que (minAndMax xs) es una lista con únicamente 2
--elementos (elemento mínimo de xs y elemento máximo de xs), donde xs es una lista
------------------------------------EJERCICIO 2-------------------------------------

minAndMax :: (Ord a) => [a] -> [a]
minAndMax xs = [minimum xs] ++ [maximum xs]

--Definir la función minorsFirstElement tal que (minorsFirstElement xs) es una lista con
--los elementos menores al primer elemento de xs, donde xs es una lista.(El primer
--elemento se ignora)
------------------------------------EJERCICIO 3-------------------------------------

minorsFirstElement :: (Integral a) => [a] -> [a]
minorsFirstElement (x:xs) = [num | num <- xs, num < x]

--Definir la función greaterOrEqualFirstElement tal que (greaterOrEqualFirstElement
--xs) es una lista con los elementos mayores o iguales al primer elemento de xs,
--donde xs es una lista.(El primer elemento se ignora)
------------------------------------EJERCICIO 4-------------------------------------

greaterOrEqualFirstElement :: (Integral a) => [a] -> [a]
greaterOrEqualFirstElement (x:xs) = [num | num <- xs, num >= x]

--Definir la función minorsToSumFirstAndSecondElem tal que
--(minorsToSumFirstAndSecondElem xs) es una lista con los elementos menores a la
--suma del primer y segundo elemento de xs (sin tomar en cuenta los primeros 2
--elementos), donde xs es una lista.
------------------------------------EJERCICIO 5-------------------------------------

minorsToSumFirstAndSecondElem :: (Integral a) => [a] -> [a]
minorsToSumFirstAndSecondElem (x:y:xs) = [num | num <- xs, num < (x+y)]

--Definir la función listSumDuplaToList tal que (listSumDuplaToList xs) es una lista en
--la que cada elemento es la suma de los elementos de cada dupla, donde xs es una
--lista de duplas.
------------------------------------EJERCICIO 6-------------------------------------

listSumDuplaToList :: (Integral a) => [(a,a)] -> [a]
listSumDuplaToList xs = [fst num + snd num| num <- xs]


--Definir la función listMultTripletaToList tal que (listMultTripletaToList xs) es una lista
--en la que cada elemento es la multiplicación de los elementos de cada tripleta,
--donde xs es una lista de tripletas.

-----------------------------------EJERCICIO 7-------------------------------------

listMultTripletaToList :: Num a => [(a, a, a)] -> [a]
listMultTripletaToList xs = [x*y*z| (x,y,z) <- xs ]

--Definir la función changeFstToSnd tal que (changeFstToSnd xs) es una lista en
--donde los elementos de una dupla cambian de posición, donde xs es una lista de
--duplas.
-----------------------------------EJERCICIO 8-------------------------------------

changeFstToSnd :: [(b1, b2)] -> [(b2, b1)]
changeFstToSnd xs = [(snd num , fst num)| num <- xs]

--Definir la función sumVectors tal que (sumVectors xs) es un vector resultante de la
--suma de los diferentes vectores de xs, donde xs es una lista de duplas.
-----------------------------------CODIGO AUXILIAR-------------------------------------
listFirstDupla :: [(a, b)] -> [a]
listFirstDupla [] = []
listFirstDupla (x:xs) = [fst x] ++ listFirstDupla xs
listSndDupla :: [(a1, a2)] -> [a2]
listSndDupla [] = []
listSndDupla (x:xs) = [snd x] ++ listSndDupla xs
-----------------------------------EJERCICIO 9-------------------------------------
sumVectors :: Num a => [(a, a)] -> [a]
sumVectors [] = []
sumVectors vector = [sum (listFirstDupla vector)] ++ [sum (listSndDupla vector)]


--Definir la función dividers tal que (dividers n) es una lista de los divisores de n, donde
--n es un número.
-----------------------------------EJERCICIO 10-------------------------------------
dividers :: Int -> [Int]
dividers n = [x | x <-[1..n], mod n x == 0]


--Definir la función primeNumbers tal que (primeNumbers n) es una lista con los
--números primos existentes de 1 a n, donde n es un número.
--Recuerda: un número primo tiene únicamente 2 divisores 1 y el mismo número.
-----------------------------------CODIGO AUXILIAR-------------------------------------
mult :: Integral a => a -> [a] -> [a]
mult n xs = [ x | x <- xs, mod x  n /= 0 ]

crb :: Integral a => [a] -> [a]
crb  []     = []
crb (n:ns) = n : crb  (mult n ns)
-----------------------------------EJERCICIO 11-------------------------------------
primeNumbers :: Integral a => a -> [a]
primeNumbers numero = crb  [2..numero] 


--Definir la función infinitePrimeNumbers tal que (infinitePrimeNumbers) es una lista
--infinita de los números primos.
-----------------------------------EJERCICIO 12-------------------------------------
infinitePrimeNumbers:: [Integer]
infinitePrimeNumbers = crb [2..]
