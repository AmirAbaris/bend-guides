import Base

# tick: folds a frame's events into the next state; None quits the app
def tick(events: List<Event>, color: U32) -> IO(Maybe<U32>):
  match events:
    case Nil{}:
      IO.pure(Maybe<U32>, Some{color})
    case Con{Close{}, rest}:
      IO.pure(Maybe<U32>, None{})
    case Con{e, rest}:
      tick(rest, (color + 1 : U32))

def main() -> IO(Unit):
  # view: returns the state beside its image; Pix paints the whole frame
  App.run(~U32, ~App{+s => (s, Pix{s}), tick}, "Hello", 256, 256, 0)
