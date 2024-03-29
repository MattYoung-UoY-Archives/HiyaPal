

module AbsHiyapal where

-- Haskell module generated by the BNF converter




newtype VarId = VarId String deriving (Eq, Ord, Show, Read)
newtype Boolean = Boolean String deriving (Eq, Ord, Show, Read)
data Exp
    = SinIExpr IntExp
    | IExpr IntExp Exp
    | SinBExpr BoolExp
    | BExpr BoolExp Exp
  deriving (Eq, Ord, Show, Read)

data BoolExp = Val Boolean | BVar VarId
  deriving (Eq, Ord, Show, Read)

data IntExp
    = Div IntExp IntExp
    | Sub IntExp IntExp
    | Add IntExp IntExp
    | Mul IntExp IntExp
    | Neg IntExp
    | Nmb Integer
    | IVar VarId
  deriving (Eq, Ord, Show, Read)

