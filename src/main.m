close all;

addpath(genpath('../Images'));
addpath(genpath('functions'));

%load in all the images
originalImg = readImg('../Images/original.jpg');
smileImg = readImg('../Images/smile.jpg');

% ask user to select landmarks
[p,q] = cpselect(originalImg, zeroRotation, 'wait', true);
%[p1,q1] = cpselect(originalImg, slightRotation, 'wait', true);
%[p2,q2] = cpselect(originalImg, heavyRotation, 'wait', true);
%p =  [173.375000000000,73.3749999999999;273.375000000000,39.3749999999999;372.875000000000,67.3749999999999;190.375000000000,165.375000000000;377.375000000000,164.375000000000;189.375000000000,216.625000000000;384.375000000000,210.125000000000;263.875000000000,254.625000000000;316.375000000000,247.125000000000;225.875000000000,309.875000000000;297.375000000000,358.375000000000;355.375000000000,309.875000000000;261.375000000000,296.875000000000;323.375000000000,294.375000000000;224.875000000000,353.375000000000;354.875000000000,340.375000000000];
%q =  [186.375000000000,83.6249999999999;285.375000000000,46.1249999999999;392.875000000000,79.6249999999999;204.875000000000,168.125000000000;391.875000000000,169.125000000000;202.375000000000,221.625000000000;399.375000000000,213.625000000000;278.875000000000,259.125000000000;333.375000000000,253.125000000000;233.375000000000,300.125000000000;309.375000000000,360.125000000000;375.875000000000,300.625000000000;268.375000000000,290.125000000000;344.375000000000,284.625000000000;238.375000000000,354.125000000000;366.875000000000,335.625000000000];







% p1 = [172.875000000000,72.3749999999999;279.375000000000,38.3749999999999;374.375000000000,65.8749999999999;189.875000000000,167.375000000000;378.875000000000,162.375000000000;189.875000000000,219.375000000000;388.375000000000,210.875000000000;268.375000000000,257.375000000000;318.375000000000,251.875000000000;265.875000000000,296.875000000000;320.875000000000,293.375000000000;292.375000000000,285.375000000000;295.375000000000,307.875000000000;294.375000000000,358.375000000000;225.375000000000,311.875000000000;360.375000000000,300.875000000000;228.375000000000,347.875000000000;354.375000000000,336.375000000000];
% q1 = [150.375000000000,107.125000000000;220.875000000000,59.6249999999999;336.375000000000,58.6249999999999;187.375000000000,188.125000000000;368.875000000000,151.625000000000;199.375000000000,236.125000000000;387.875000000000,193.625000000000;269.875000000000,261.625000000000;318.375000000000,251.125000000000;268.375000000000,296.625000000000;337.375000000000,280.125000000000;303.875000000000,286.125000000000;305.375000000000,302.125000000000;319.375000000000,352.875000000000;239.875000000000,317.875000000000;371.375000000000,297.375000000000;240.875000000000,353.875000000000;368.375000000000,336.375000000000];
% p2 = [170.375000000000,78.8749999999999;273.375000000000,39.3749999999999;375.875000000000,66.8749999999999;191.375000000000,167.375000000000;377.375000000000,161.875000000000;229.875000000000,202.875000000000;265.875000000000,206.875000000000;315.375000000000,203.875000000000;348.875000000000,204.375000000000;191.875000000000,228.375000000000;388.375000000000,217.375000000000;263.875000000000,254.875000000000;317.875000000000,251.875000000000;233.375000000000,315.875000000000;295.875000000000,358.375000000000;366.875000000000,285.375000000000;355.875000000000,315.875000000000;219.875000000000,357.875000000000;355.375000000000,337.375000000000]; 
% q2 = [71.3750000000000,172.375000000000;113.375000000000,102.375000000000;205.875000000000,59.3749999999999;147.875000000000,250.125000000000;289.375000000000,138.625000000000;193.875000000000,254.625000000000;218.375000000000,232.125000000000;254.375000000000,202.625000000000;285.375000000000,174.625000000000;185.875000000000,303.625000000000;331.875000000000,172.625000000000;242.875000000000,262.625000000000;282.875000000000,231.125000000000;246.375000000000,328.875000000000;321.375000000000,320.375000000000;355.875000000000,241.375000000000;355.875000000000,270.375000000000;243.375000000000,364.875000000000;370.375000000000,321.375000000000];
% 
% %perform registration when the user has selected the landmarks
% transform1 = registrationMapping(p,q, zeroRotation, originalImg);
% transform2 = registrationMapping(p1,q1, slightRotation, originalImg);
% transform3 = registrationMapping(p2,q2, heavyRotation, originalImg);
% 
% %calculate the difference of the transformation from the original image
% diff1 = originalImg - transform1;
% diff2 = originalImg - transform2;
% diff3 = originalImg - transform3;
% 
% 
% %Displaying the No rotation results
% figure
% subplot(1,4,1); printImg(originalImg, 'Original Selfie');
% subplot(1,4,2); printImg(zeroRotation, 'No Rotation Selfie');
% subplot(1,4,3); printImg(transform1, 'No Rotation Transformation');
% subplot(1,4,4); printImg(diff1, 'Difference between Original and Rotation Transformation');
% 
% 
% 
% %Displaying the Small rotation results
% figure
% subplot(1,4,1); printImg(originalImg, 'Original Selfie');
% subplot(1,4,2); printImg(slightRotation, 'Small Rotation Selfie');
% subplot(1,4,3); printImg(transform2, 'Small Rotation Transformation');
% subplot(1,4,4); printImg(diff2, 'Difference between Original and Rotation Transformation');
% 
% %Displaying the Large rotation results
% figure
% subplot(1,4,1); printImg(originalImg, 'Original Selfie');
% subplot(1,4,2); printImg(heavyRotation, 'Large Rotation Selfie');
% subplot(1,4,3); printImg(transform3, 'Large Rotation Transformation');
% subplot(1,4,4); printImg(diff3, 'Difference between Original and Rotation Transformation');
% 