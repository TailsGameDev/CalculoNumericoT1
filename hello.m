printf('Hello, Octave!\n');
format long
a = [1 2.5  2;
     1 -2   4;
     3 0.1 -1;];
n=3;

b = [-1 10 -3];

x = fLUCrout(n,a,b);
