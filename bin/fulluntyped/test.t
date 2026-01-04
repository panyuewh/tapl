Examples for testing
  $ cat > test.f << EOF   
  > "hello";
  > 
  > x/;
  > x;
  > 
  > true;
  > if false then true else false; 
  > 
  > x = true;
  > x;
  > if x then false else x; 
  > 
  > let x=true in x;
  > 
  > lambda x. x;
  > (lambda x. x) (lambda x. x x); 
  > 
  > {x=lambda x.x, y=(lambda x.x)(lambda x.x)}; 
  > {x=lambda x.x, y=(lambda x.x)(lambda x.x)}.x; 
  > 0; 
  > succ (pred 0);
  > iszero (pred (succ (succ 0))); 
  > 
  > timesfloat (timesfloat 2.0 3.0) (timesfloat 4.0 5.0);
  > EOF

Run the tests
  $ fulluntyped test.f
  "hello"
  x 
  x
  true
  false
  x = true
  true
  false
  true
  (lambda x'. x')
  (lambda x'. x' x')
  {x=lambda x'.x', y=lambda x'.x'}
  (lambda x'. x')
  0
  1
  false
  120.
