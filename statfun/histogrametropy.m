function [ent, hn, hx]=histogrametropy(timeseries)
% [ent, h, hx]=histogrametropy(timeseries)
% Computes statistical entropy (in bits?) of the (normalized) histogram of the time
% series (make the time series positiove by shifting the histogram to positive values only...). 


% make it positive:
if min(timeseries(:))<0
    timeseries=timeseries-min(timeseries(:))+eps;
end

numbin=100;
maxval=5000;
% [h,hx]=hist(timeseries,[0:maxval/numbin:maxval]);
[h,hx]=hist(timeseries,numbin);
hn=h'./(trapz(hx,h));
positiveindex=find(hn>eps);
ent=-sum(hn(positiveindex).*log(hn(positiveindex)));