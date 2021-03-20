%mainmatrix =normrnd(3,10,[4,4])
%estimetematrix = normrnd(3,10,[4,4])
mainmatrix =[ 5.6897   -9.6031   -0.9130   -6.4409; 3.4778   -3.0587    2.2889    8.3060; 13.9316   -1.6066    6.2939    2.7128;2.2874   -1.0607    6.0397   -1.5385]
estimetematrix = [ 11.8898   11.8297   -7.2240   18.6104;-2.9869   10.5886   -8.3301   -7.3380; 7.6654    3.2759   -6.5207    2.0107; -15.2910   18.7447  -17.4248  -10.9971]
[sequence, states] = hmmgenerate (100, mainmatrix, estimetematrix);
[transprobest, outprobest] = hmmestimate (sequence, states);

currentstatematrix = transprobest
[row,col] = find(ismember(currentstatematrix, max(currentstatematrix(:))))

fprintf('Thus state is %f %f',row,col);
double value ;
value= currentstatematrix(row,col)


righttransprob =normrnd(2,5,[4,4])
rightoutprob = normrnd(2,5,[4,4])
[rightsequence, rightstates] = hmmgenerate (100, righttransprob, rightoutprob);
[righttrans, rightout] = hmmestimate (rightsequence, rightstates);
rightdirection = righttrans
[rightx,righty] = find(value-0.06 < rightdirection & rightdirection < value+0.06 )
%maatrixvaluesright = rightdirection(rightx,righty)


lefttransprob =normrnd(3,10,[4,4]);
leftoutprob = normrnd(3,10,[4,4]);
[leftsequence, leftstates] = hmmgenerate (100, lefttransprob, leftoutprob);
[lefttrans, leftout] = hmmestimate (leftsequence, leftstates);
leftdirection = lefttrans
[leftx,lefty] = find(value-0.06<leftdirection & leftdirection<value+0.06)
%maatrixvaluesleft = leftdirection(leftx,lefty)


downtransprob =normrnd(1,8,[4,4]);
downoutprob = normrnd(1,8,[4,4]);
[downsequence, downstates] = hmmgenerate (100,downtransprob, downoutprob);
[downtrans, downout] = hmmestimate (downsequence, downstates);
downdirection = downtrans


[downx,downy] = find(value-0.06<downdirection & downdirection<value+0.06)
%maatrixvaluesdown = downdirection(downx,downy)


uptransprob =normrnd(3,5,[4,4]);
upoutprob = normrnd(3,5,[4,4]);
[upsequence, upstates] = hmmgenerate (100, uptransprob, upoutprob);
[uptrans, upout] = hmmestimate (upsequence, upstates);
updirection = uptrans
[upx,upy] = find(value-0.06<updirection & updirection<value+0.06)

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