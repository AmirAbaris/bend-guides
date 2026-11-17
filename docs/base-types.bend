type Empty is Data:

type Unit is Data:
  Unit{}

type Bool is Data:
  False{}
  True{}

type Cmp is Data:
  LT{}
  EQ{}
  GT{}

type Either<a, b, -A: Kind(a), -B: Kind(b)> is Kind(a <&> b):
  Inl{value: A}
  Inr{value: B}

type Sigma<a, b, -A: Kind(a), -B: @-x: A -> Kind(b)> is Kind(a <&> b):
  Tuple{fst: A, snd: B(fst)}

type Nat is Data:
  Zero{}
  Succ{pred: Nat}

type Maybe<a, -A: Kind(a)> is Kind(a):
  None{}
  Some{value: A}

type Result<a, b, -E: Kind(a), -A: Kind(b)> is Kind(a <&> b):
  Fail{error: E}
  Done{value: A}

type Poll<a, b, -A: Kind(a), -R: Kind(b)> is Kind(a <&> b):
  Ready{value: A}
  Wait{rest: R}

type List<a, -A: Kind(a)> is Kind(a):
  Nil{}
  Con{head: A, tail: List<a, A>}

type Word.Nil is Data:
  WNil{}

type Word.Con<-p: Nat> is Data:
  WCon{head: Bool, tail: Word(p)}

type U32 is Data:
  U32{data: Word(32n)}

type F32 is Data:
  F32{data: Word(32n)}

type Char is Data:
  Chr{code: U32}

type String is Data:
  SNil{}
  SCon{head: Char, tail: String}

type Array<-T: Type> is Type:
  ALeaf{value: T}
  ANode{xs: Array<T>, ys: Array<T>}

type Image is Data:
  Pix{color: U32}
  Qua{tl: Image, tr: Image, bl: Image, br: Image}

type Tool is Data:
  Tool.Mouse{}
  Tool.Finger{force: F32, width: F32, height: F32}
  Tool.Pen{force: F32, tangential: F32, tilt_x: F32, tilt_y: F32, twist: F32}

type Event is Data:
  Key{code: U32, down: Bool}
  Text{text: String}
  Press{id: U32, tool: Tool, x: F32, y: F32, time: U32, button: U32, down: Bool}
  Move{id: U32, tool: Tool, x: F32, y: F32, time: U32}
  Leave{id: U32}
  Lost{id: U32}
  Look{dx: F32, dy: F32}
  Scroll{x: F32, y: F32, dx: F32, dy: F32}
  Focus{on: Bool}
  Close{}

type Map<a, -V: Kind(a)> is Kind(a):
  MTip{}
  MLeaf{key: String, val: V}
  MNode{pos: Nat, lo: Map<a, V>, hi: Map<a, V>}

law File:
  Type

law Socket:
  Type

law Listener:
  Type

law Window:
  Type

law Audio:
  Type

law Chan:
  for -A: Type
  Data

type IO.OP<-R: Type> is Type:
  Emit{value: R}
  Halt{code: U32, message: String}
  Exit{code: U32}

type App<-S: Type> is Type:
  App{view: S -> Pair(S, Image), tick: List<Event> -> S -> IO(Maybe<S>)}
