%%
clear all
close all
clc

Midi = midictrl('init');

Y=zeros(1,9);

while (midi_select([],[],Midi,38,'off'))
   
    Data= midictrl('get',Midi)';
    Y=[Data(1,1) Data(1,2) Data(1,3) Data(1,4) Data(1,5) Data(1,6) Data(1,7) Data(1,8) Data(1,9)]
    bar(Y,0.4,'hist')
    title('Press STOP to kill code');
    set(gca,'YLim',[1 127]);
    set(gca,'XLim',[0 10]);
    drawnow
end
%%
midictrl('close',Midi);
close all
disp('Midi Closed');