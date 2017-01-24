function estimate = montecarloISW(count)

u1 = rand(1,count);     %Generate COUNT random numbers from UNIF(0,1)
u2 = rand(1,count);     %Generate COUNT random numbers from UNIF(0,1)

f = (u1.^2)+(u2.^2);    %Calculate radius of each random point

ind = f<1;              %Indicator function for f in circle

estimate = mean(ind);   %Calculate mean of indicators

figure();
hold on                 %Open plotting window and lock plotting
plot(u1,u2,'.');        %Plot random points generated earlier
x1 = linspace(0,1,1000);%Generate 1000 evenly-spaced points in (0,1)
x2 = sqrt(1-(x1.^2));   %Create quarter circle
plot(x1,x2);            %Plot division line
axis([0 1 0 1]);        %Resize window