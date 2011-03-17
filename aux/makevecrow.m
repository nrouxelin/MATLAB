function vec_row=makevecrow(vec)
% vec_row=makevecrow(vec)
% Makes sure that the output vector vec_row is a row vector
sv=size(vec);
vec_row=vec;
if sv(1)>sv(2)
    vec_row=vec';
end