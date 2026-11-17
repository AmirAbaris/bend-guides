import Base

def greet(name: String) -> IO(String):
  do IO<String>:
    IO.sleep(1000)             # a step
    return "Hello, " ++ name   # return: wraps a pure value

def main() -> IO(Unit):
  do IO<Unit>:
    name : String <- IO.try(String, IO.get_env("USER")) # <-: binds a result
    chan : Chan(String) <- IO.fork(String, greet(name)) # runs concurrently
    IO.print("Waiting...")
    text : String <- IO.join(String, chan)
    IO.print(text)
