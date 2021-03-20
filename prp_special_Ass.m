mainmatrix =normrnd(3,10,[4,4])
estimetematrix = normrnd(3,10,[4,4])
[sequence, states] = hmmgenerate (100, mainmatrix, estimetematrix);
[transprobest, outprobest] = hmmestimate (sequence, states);

currentstatematrix = transprobest
[row,col] = find(ismember(currentstatematrix, max(currentstatematrix(:))))

fprintf('Thus state is %f %f',row,col);
double value ;
value= currentstatematrix(row,col)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

righttransprob =normrnd(2,5,[4,4])
rightoutprob = normrnd(2,5,[4,4])
[rightsequence, rightstates] = hmmgenerate (100, righttransprob, rightoutprob);
[righttrans, rightout] = hmmestimate (rightsequence, rightstates);
rightdirection = righttrans

[row,col] = find(ismember(rightdirection, max(rightdirection(:))))

fprintf('Thus state is %f %f',row,col);
double value ;
arrayright = zeros(5,1);

value= rightdirection(row,col)
less = (value - 0.05);
more = (value + 0.05);

for i=1: 4
     for j = 1:4
         if rightdirection(i,j) > less && rightdirection(i,j) < more
            fprintf(' %f',rightdirection(i,j)) 
            arrayright(i,1) = rightdirection(i,j);           
         end
    end        
end


count =0;
reshape(arrayright,1,[]) 
for k = 1:5
   if arrayright(k) > 0
       count = count+1;       
       fprintf('\n value: %f',arrayright(k))
       fprintf('\n location %f',k)
   end
end
fprintf('%f',count)
 if count == 1
   for k = 1:5
   if arrayright(k) > 0
       rightdirectionarray = arrayright(k);
       fprintf('\n rightdirection_arrayvalue %f',arrayright(k))
   end
   end
 elseif count >1
     for k = 1:5
     if arrayright(k) > value - 0.02 && arrayright(k) < value + 0.02
         rightdirectionarray = arrayright(k);
         fprintf('\n rightdirection_arrayvalue %f',arrayright(k))
     end
     end
 end
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lefttransprob =normrnd(3,10,[4,4]);
leftoutprob = normrnd(3,10,[4,4]);
[leftsequence, leftstates] = hmmgenerate (100, lefttransprob, leftoutprob);
[lefttrans, leftout] = hmmestimate (leftsequence, leftstates);
leftdirection = lefttrans
[leftx,lefty] = find(value-0.06<leftdirection & leftdirection<value+0.06)

[row,col] = find(ismember(leftdirection, max(leftdirection(:))))

fprintf('Thus state is %f %f',row,col);
double value ;
arrayleft = zeros(5,1);

value= leftdirection(row,col)
less = (value - 0.05);
more = (value + 0.05);

for i=1: 4
     for j = 1:4
         if leftdirection(i,j) > less && leftdirection(i,j) < more
            fprintf(' %f',leftdirection(i,j)) 
            arrayleft(i,1) = leftdirection(i,j);           
         end
    end        
end


count_left =0;
reshape(arrayleft,1,[]) 
for k = 1:5
   if arrayleft(k) > 0
       count_left = count_left+1;       
       fprintf('\n value: %f',arrayleft(k))
       fprintf('\n location %f',k)
   end
end
fprintf('%f',count)
 if count_left == 1
   for k = 1:5
   if arrayleft(k) > 0
       leftdirectionarray = arrayleft(k);
       fprintf('\n leftdirection_arrayvalue %f',arrayleft(k))
   end
   end
 elseif count_left >1
     for k = 1:5
     if arrayleft(k) > value - 0.02 && arrayleft(k) < value + 0.02
         leftdirectionarray = arrayleft(k);
         fprintf('\n leftdirection_arrayvalue %f',arrayleft(k))
     end
     end
 end
 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

downtransprob =normrnd(1,8,[4,4]);
downoutprob = normrnd(1,8,[4,4]);
[downsequence, downstates] = hmmgenerate (100,downtransprob, downoutprob);
[downtrans, downout] = hmmestimate (downsequence, downstates);
downdirection = downtrans


[downx,downy] = find(value-0.06<downdirection & downdirection<value+0.06)

fprintf('Thus state is %f %f',row,col);
double value ;
arraydown = zeros(5,1);

value= downdirection(row,col)
less = (value - 0.05);
more = (value + 0.05);

for i=1: 4
     for j = 1:4
         if downdirection(i,j) > less && downdirection(i,j) < more
            fprintf(' %f',downdirection(i,j)) 
            arrayleft(i,1) = downdirection(i,j);           
         end
    end        
end


count_down =0;
reshape(arraydown,1,[]) 
for k = 1:5
   if arraydown(k) > 0
       count_down = count_down+1;       
       fprintf('\n value: %f',arraydown(k))
       fprintf('\n location %f',k)
   end
end
fprintf('%f',count_down)
 if count_down == 1
   for k = 1:5
   if arraydown(k) > 0
      downdirectionarray = arraydown(k);
       fprintf('\n downdirection_arrayvalue %f',arraydown(k))
   end
   end
 elseif count_down >1
     for k = 1:5
     if arraydown(k) > value - 0.02 && arraydown(k) < value + 0.02
         downdirectionarray = arraydown(k);
         fprintf('\n downdirection_arrayvalue %f',arraydown(k))
     end
     end
 end
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

uptransprob =normrnd(3,5,[4,4]);
upoutprob = normrnd(3,5,[4,4]);
[upsequence, upstates] = hmmgenerate (100, uptransprob, upoutprob);
[uptrans, upout] = hmmestimate (upsequence, upstates);
updirection = uptrans
[upx,upy] = find(value-0.06<updirection & updirection<value+0.06)



fprintf('Thus state is %f %f',row,col);
double value ;
arrayup = zeros(5,1);

value= updirection(row,col)
less = (value - 0.05);
more = (value + 0.05);

for i=1: 4
     for j = 1:4
         if updirection(i,j) > less && updirection(i,j) < more
            fprintf(' %f',updirection(i,j)) 
            arrayup(i,1) = updirection(i,j);           
         end
    end        
end


count_up =0;
reshape(arrayup,1,[]) 
for k = 1:5
   if arrayup(k) > 0
       count_up = count_up+1;       
       fprintf('\n value: %f',arrayup(k))
       fprintf('\n location %f',k)
   end
end
fprintf('%f',count_up)
 if count_up == 1
   for k = 1:5
   if arrayup(k) > 0
     updirectionarray = arrayup(k);
       fprintf('\n updirection_arrayvalue %f',arrayup(k))
   end
   end
 elseif count_up >1
     for k = 1:5
     if arrayup(k) > value - 0.02 && arrayup(k) < value + 0.02
         updirectionarray = arrayup(k);
         fprintf('\n updirection_arrayvalue %f',arrayup(k))
     end
     end
 end
 

double maatrixvaluesright;
double maatrixvaluesleft;
double maatrixvaluesdown;
double maatrixvaluesup;

maatrixvaluesright = rightdirection(rightx,righty)
maatrixvaluesleft = leftdirection(leftx,lefty)
maatrixvaluesdown = downdirection(downx,downy)
maatrixvaluesup = updirection(upx,upy)

Direction = [maatrixvaluesright maatrixvaluesleft maatrixvaluesup maatrixvaluesdown]
maximum = max(Direction)

fprintf('\n current location (%f , %f)',row,col)


if maximum == maatrixvaluesright
    fprintf('\n move right')
       if row <=4 && row >0 && col <=4 && col>0 
        fprintf('\n future location:(%f,%f)',row,col+1)
       end

elseif maximum == maatrixvaluesleft
    fprintf('\n move left')
    if row <=4 && row >0 && col <=4 && col>0
        fprintf('\n future location:(%f,%f)',row,col-1)
    end

elseif maximum== maatrixvaluesup
    fprintf('\n move up')
       if row <= 4 && row >0 && col <=4 && col>0
        fprintf('\n future location:(%f,%f)',row-1,col)
       end

else
    fprintf('\n move dowm')  
      if row <=4 && row >0 && col <=4 && col>0
        fprintf('\n future location:(%f,%f)',row+1,col)
      end
end



%T=array2table(transprobest,'VariableNames', {'1', '2', '3','4'});