clear; 
clc;
n=input('number of buses'); 
e=input('number of elements'); 
a=zeros(e,n);
y=zeros(e,e); 
for i=1:e
     y(i,i)=input('element value');
     c=input(' checking whether Z or Y 1 for Z 2 for Y'); 
  if c==1
     y(i,i)=1/y(i,i); 
  end
end
for i=1:e 
    s=input('starting bus'); 
b=input('ending bus'); 
a(i,s)=1;
a(i,b)=-1; 
end
y 
a'
a'*y*a