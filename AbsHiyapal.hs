

module AbsHiyapal where

-- Haskell module generated by the BNF converter




newtype VarId = VarId String deriving (Eq, Ord, Show, Read)
data Exp = SinExpr IntExp | Expr IntExp Exp
  deriving (Eq, Ord, Show, Read)

data IntExp
    = Div IntExp IntExp
    | Sub IntExp IntExp
    | Add IntExp IntExp
    | Mul IntExp IntExp
    | Neg IntExp
    | Nmb Integer
    | Var VarId
  deriving (Eq, Ord, Show, Read)

