Examples for testing
  $ cat > test.f << EOF   
  > lambda x:Bot. x;
  > lambda x:Bot. x x; 
  > 
  > lambda x:Top. x;
  > (lambda x:Top. x) (lambda x:Top. x);
  > (lambda x:Top->Top. x) (lambda x:Top. x);
  > 
  > "hello";
  > 
  > unit;
  > 
  > 
  > lambda x:<a:Bool,b:Bool>. x;
  > 
  > {x=true, y=false}; 
  > {x=true, y=false}.x;
  > {true, false}; 
  > {true, false}.1; 
  > 
  > 
  > if true then {x=true,y=false,a=false} else {y=false,x={},b=false};
  > 
  > timesfloat 2.0 3.14159;
  > 
  > let x=true in x;
  > 
  > (lambda r:{x:Top->Top}. r.x r.x) 
  > {x=lambda z:Top.z, y=lambda z:Top.z}; 
  > 
  > 
  > lambda x:Bool. x;
  > (lambda x:Bool->Bool. if x false then true else false) 
  > (lambda x:Bool. if x then false else true); 
  > 
  > lambda x:Nat. succ x;
  > (lambda x:Nat. succ (succ x)) (succ 0); 
  > T = Nat->Nat;
  > lambda f:T. lambda x:Nat. f (f x);
  > 
  > lambda x:A. x;
  > EOF

Run the tests
  $ fullref test.f
  (lambda x:Bot. x) : Bot -> Bot
  (lambda x:Bot. x x) : Bot -> Bot
  (lambda x:Top. x) : Top -> Top
  (lambda x:Top. x) : Top
  (lambda x:Top. x) : Top -> Top
  "hello" : String
  unit : Unit
  (lambda x:<a:Bool,b:Bool>. x)
    : <a:Bool,b:Bool> -> <a:Bool, b:Bool>
  {x=true, y=false} : {x:Bool, y:Bool}
  true : Bool
  {true, false} : {Bool, Bool}
  true : Bool
  {x=true, y=false, a=false} : {x:Top, y:Bool}
  6.28318 : Float
  true : Bool
  (lambda z:Top. z) : Top
  (lambda x:Bool. x) : Bool -> Bool
  true : Bool
  (lambda x:Nat. (succ x)) : Nat -> Nat
  3 : Nat
  T :: *
  (lambda f:T. lambda x:Nat. f (f x)) : T -> Nat -> Nat
  (lambda x:A. x) : A -> A
