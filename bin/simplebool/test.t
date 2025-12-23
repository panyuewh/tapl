Examples for testing
  $ cat > test.f << EOF   
  > lambda x:Bool. x;
  > (lambda x:Bool->Bool. if x false then true else false) 
  > (lambda x:Bool. if x then false else true); 

Run the tests
  $ simplebool test.f
  (lambda x:Bool. x) : Bool -> Bool
  true : Bool
