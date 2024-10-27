num1=0;
num2=0;
num3=0;
si=0;
ya=0;
to=0;
q=0;
m=1;
while m
   x1=input('welcome to the voting system program, are you a student or admin: ','s');
   if x1=="student"
       
   %user id 
   idu=input("please enter ur id: ",'s');
   idd=[project{1:14,"userId"}];
   c1=sum(idu==idd);
   %user names 
   nau=input("please enter ur username: ",'s');
   nad=[project{1:14,"usernames"}];
   c2=sum(nau==nad);
   %passwords
   pau=input("please enter ur password: ");
   pad=[project{1:14,"password"}];
   c3=sum(pau==pad);
   tc=c1+c2+c3;
  if tc==3
     q=q+1;
     x=input("who would you like to vote for; ","s");
       if x=="simon"
         si=si+1;
       end
       if x=="yafiet"
         ya=ya+1;
       end
       if x=="tomas"
         to=to+1;
       end
     else tc~=3;
    disp("invald login info")
    end

   end
   if x1=="admin"
   %admin id
   ida=input("please enter ur id: ","s");
   idad=[project{1:3,"adminid"}];
   c4=sum(ida==idad);
   %admin password
   paa=input("please enter ur password: ");
   paad=[project{1:3,"adpa"}];
   c5=sum(paa==paad);
   tc2=c4+c5;
  if tc2==2;
       x2=input('welcome admin, do you want to terminate the vote or view the current vote: ','s');
       if x2== "terminate"
           m=0;

       end
       if x2== "view"
           disp('Number of votes currently are: ')
           disp(q)
           disp('Simon currently has: ')
           disp(si);
           disp('yafiet currently has: ')
           disp(ya);
           disp('Tomas currently has: ')
           disp(to);
       end
  else tc2~=2;
           disp("incorrect login info")
       end

   end
end
disp('The number of votes were ')
disp(q)
disp('The voting result is shown below: ');
if(ya>si && ya>to)
    num1=ya;
    if si>to
        num2=si;
        num3=to;
    elseif to>si
        num2=to;
        num3=si;
    end

elseif(si>ya && si>to)
    num1=si;
    if ya>to
        num2=ya;
        num3=to;
    elseif to>ya
        num2=to;
        num3=ya;
    end
elseif(to>ya && to>si)
    num1=to;
    if si>ya
        num2=si;
        num3=ya;
    elseif ya>si
        num2=ya;
        num3=si;
    end

end
if num1==ya
    disp('Winner is Yafiet with vote of:')
    disp(num1)
elseif num1==si
    disp('Winner is Simon with vote of:')
    disp(num1)
elseif num1==to
    disp('Winner is Tomas with vote of:')
    disp(num1)
end
if num2==ya
    disp('Second place is Yafiet with vote of:')
    disp(num2)
elseif num2==si
    disp('Second place is Simon with vote of:')
    disp(num2)
elseif num2==to
    disp('Second place is Tomas with vote of:')
    disp(num2)
end
if num3==ya
    disp('Third place is Yafiet with vote of:')
    disp(num3)
elseif num3==si
    disp('Third place is Simon with vote of:')
    disp(num3)
elseif num3==to
    disp('Third place is Tomas with vote of:')
    disp(num3)
end