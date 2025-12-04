Examples for testing
  $ cat > test.f << EOF   
  > true;
  > if false then true else false; 
  > if true then true else false;
  > 0; 
  > succ (pred 0);
  > iszero (pred (succ (succ 0))); 
  > EOF

Run the tests
  $ arith test.f
  true
  false
  true
  0
  1
  false
