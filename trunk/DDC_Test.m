% R Hyde 19/06/15
% Wrapper to test run DDC clustering
% To load dataset, edit file name
% For test datasets provide suggested settings are:
% Gaussian5000
%   InitRad=0.05, MinClus=any, unused at this time, Verbose: 1 to
%   watch progress, 2 to test speed with no output, Merge=1
% DS2
%   InitRad=0.05, MinClus=any, unused at this time, Verbose: 1 to
%   watch progress, 2 to test speed with no output, Merge=0 (try both and
%   it highlights the dangers of inappropriate merging!)

DataIn=csvread('DS2.csv',1,0);

DataIn=double(DataIn(:,1:2));
for idx=1:size(DataIn,2)
    DataIn(:,idx) = (DataIn(:,idx)-min(DataIn(:,idx))) / (max(DataIn(:,idx))-min(DataIn(:,idx)));
end
InitRad=0.05;
MinClus=1;
Verbose=0;
Merge=0;

tic
[Clusters, Results]=DDC_ver01_1(DataIn, InitRad, Merge, Verbose);
toc/size(DataIn,1)

figure(2)
clf
Colours=distinguishable_colors(max(Results(:,3)));
scatter(Results(:,1),Results(:,2),20,Colours(Results(:,3),:))
axis([0 1 0 1])
hold on
for zz=1:size(Clusters.Centre,1)
  rectangle('Position',[Clusters.Centre(zz,1)-Clusters.Rad(zz,1), Clusters.Centre(zz,2)-Clusters.Rad(zz,2), 2*Clusters.Rad(zz,1), 2*Clusters.Rad(zz,2)],'Curvature',[1,1])
end

