Class C
{
	i : Int <-2;
	q : Bool;
};
Class B 
{
	c : C;
	f2() : String
	{
		"hello"
	};
	g() : C
	{
		c		
	};	
};

Class A inherits B
{
	a : Int;
	b : String;
	
	f1(c:C,i:Int) : Int{
		a*5
	};

	f2() : String {
		b
	};
};

Class Main
{
	a : A;
	b : B;
	c : C;
	t: Bool;
	i: Int;
	s: String;
	main(): Object
	{
		{

			a <- new A;
			b <- new B;
			c <- new C;
			if 3<4
			then
			a.f1(c,2)
			else
			b.f2()
			fi;
			
			c <- b.g();
			a@B.f2();
			a.f2();
			
			t <- true;
			2 < 5;			
	
			let a1:A in
			while a = a1
			loop
				(new IO).out_string("done\n")
			pool;

			
			i <- (i*2)+67;
			s <- "test this" ;	
			
		}
	};
};
