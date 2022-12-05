[x,t] = house_dataset;

size(x)
size(t)

setdemorandstream(491218382)

net = fitnet(10);
view(net)
[net,tr] = train(net,x,t);
nntraintool
plotperform(tr)

testX = x(:,tr.testInd);
testT = t(:,tr.testInd);

testY = net(testX);

perf = mse(net,testT,testY)

y = net(x);

plotregression(t,y)

y = net(x);

plotregression(t,y)

e = t - y;

ploterrhist(e) 
