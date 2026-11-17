import Base

def add_strs(a: String, b: String) -> Maybe<&2, U32>:
  do Maybe<&2, U32>:
    x : U32 <- U32.read(a) # a None here ends the block with None
    y : U32 <- U32.read(b)
    return (x + y : U32)

def main() -> Maybe<&2, U32>:
  add_strs("40", "2")
