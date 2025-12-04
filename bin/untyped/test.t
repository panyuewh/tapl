Examples for testing
  $ cat > test.f << EOF   
  > x/;
  > x;
  > lambda x. x;
  > (lambda x. x) (lambda x. x x); 
  > EOF

Run the tests
  $ untyped test.f
  x 
  x
  (lambda x'. x')
  (lambda x'. x' x')
