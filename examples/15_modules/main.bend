# main.bend
import Base
import ./math.bend as M  # M.x now names every def of math.bend

def main() -> U32:
  M.square(7)
