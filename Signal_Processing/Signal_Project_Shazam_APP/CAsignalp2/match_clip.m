
 function match_clip(Clip,SNR)




%  Clip = 'Norouz-5.mp3';

song_list = get_mp3_list('C:\Users\Mohammad Reza\Desktop\CAsignalp2\Songs\Train');
%%save('SONGID_DB.mat','song_list');
%%SONGID_DB=load('SONGID_DB.mat');

% find(strcmp(SONGID_DB2(:,1),'khobshod.mp3'));
% find(strcmp(SONGID_DB2(:,1),'Norouz.mp3'));
% find(strcmp(SONGID_DB2(:,1),'Iraneman.mp3'));
L=length(song_list(:,1));
chance=zeros(1,L);

for i=1:L
    hashed=load(strcat(num2str(i),'_HASHTABLE.mat'));
    hashing=hashed.hash2;
chance(1,i) = searcher(Clip,hashing,SNR);
end
% hashed=load('hash_line1.mat');
% hashing=hashed.hash2;
% chance1 = searcher(Clip,hashing,SNR);
% 
% 
% hashed=load('hash_line2.mat');
% hashing=hashed.hash2;
% chance2 = searcher(Clip,hashing,SNR);
% 
% 
% 
% hashed=load('hash_line3.mat');
% hashing=hashed.hash2;
% chance3 = searcher(Clip,hashing,SNR);

% songname='';

% if(chance1 > chance2)&&(chance1 > chance3)
%       
%     songname=song_list(1,1);
% elseif(chance2 > chance1)&&(chance2 > chance3)
%         
%     songname=song_list(2,1);
%     
% elseif(chance3 > chance1)&&(chance3 > chance2)
%             
%     songname=song_list(3,1);
%     
% end

for j=1:L
    if(chance(1,j)==max(chance))
        disp('The input song you were looking for is: ');
        disp(song_list(j,1));
    end
end

% disp('The input song you were looking for is: \n');
% disp(songname);
 end




    