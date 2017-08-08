a=load('IPCA_ExtracFeat_Playground_to_Library_160_64896.txt','%f%f%f');
b=var(a(1:20,1));
X = a(21:40,1);
%;a(41:60,1);a(61:80,1);a(81:100,1);a(101:120,1);a(121:140,1);a(141:160,1))

D = pdist(X,'minkowski');