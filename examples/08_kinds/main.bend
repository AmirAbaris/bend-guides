import Base

#  a: a quantity (&0, &1 or &2)
# -A: a type whose values may be used a times
def length(a, -A: Kind(a), xs: List<a, A>) -> Nat:
  match xs:
    case Nil{}:
      0n
    case Con{h, t}:
      1n+length(a, A, t)

def main() -> Nat:
  length(&2, U32, [1, 2, 3])
