import Base

def main() -> String:
  +a = (6 * 7 : U32)         # sugar for U32.mul(6, 7)
  b  = U32.to_nat(a)         # conversions are T.to_x and T.from_x
  U32.show(a) ++ " = " ++ Nat.show(b)
