Examples for testing
  $ cat > test.f << EOF   
  > "hello";
  > 
  > lambda x:<a:Bool,b:Bool>. x;
  > 
  > unit;
  > 
  > timesfloat 2.0 3.14159;
  > 
  > let x=true in x;
  > 
  > {x=true, y=false}; 
  > {x=true, y=false}.x;
  > {true, false}; 
  > {true, false}.1; 
  > 
  > lambda x:Bool. x;
  > (lambda x:Bool->Bool. if x false then true else false) 
  > (lambda x:Bool. if x then false else true); 
  > 
  > lambda x:Nat. succ x;
  > (lambda x:Nat. succ (succ x)) (succ 0); 
  > 
  > T = Nat->Nat;
  > lambda f:T. lambda x:Nat. f (f x);
  > 
  > lambda x:A. x;

Run the tests
  $ fullsimple test.f
  "hello" : String
  (lambda x:<a:Bool,b:Bool>. x)
    : <a:Bool,b:Bool> -> <a:Bool, b:Bool>
  unit : Unit
  6.28318 : Float
  true : Bool
  {x=true, y=false} : {x:Bool, y:Bool}
  true : Bool
  {true, false} : {Bool, Bool}
  true : Bool
  (lambda x:Bool. x) : Bool -> Bool
  true : Bool
  (lambda x:Nat. (succ x)) : Nat -> Nat
  3 : Nat
  T :: *
  (lambda f:T. lambda x:Nat. f (f x)) : T -> Nat -> Nat
  (lambda x:A. x) : A -> A
