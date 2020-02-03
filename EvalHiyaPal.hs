module EvalHiyaPal where

import AbsHiyapal
import Data.Map

type Store = Map VarId Integer

eval :: Store -> IntExp -> Integer
eval s (Add a b) = eval s a + eval s b
eval s (Mul a b) = eval s a * eval s b
eval s (Neg a) = negate (eval s a)
eval s (Nmb n) = n
eval s (Var i) = s ! i

xyz :: Store
xyz = fromList [(VarId "x", 0), (VarId "y", 27), (VarId "z", 16)]
