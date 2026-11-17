import Base

def main() -> Array<U32> & U32:
  a = [0 : U32*8n] # new array with 8 copies of 0
  a[5] <- 42       # performs an in-place rewrite
  a[5]             # reads index 5
