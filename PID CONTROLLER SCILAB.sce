clc ; close ; clear ;
frequency =[240 254 302 320 358.5 380 451 470]; //CorrespondingFrequency
fs =8000; //Sampling Frequency
no =8;
N =1:4000; // Total No.of Samples for Each tone
temp =[]; for i =1:no
y = sin(2*3.14*(frequency(i)/fs)*N); temp =[temp y];
end 
length(temp); 
subplot(1,2,1); 
plot(frequency);
title('Input frequency'); 
subplot(1,2,2); 
plot(temp); 
title('Output');
sound (temp,fs);
 
