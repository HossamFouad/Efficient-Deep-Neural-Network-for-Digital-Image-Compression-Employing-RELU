function [moddata]=process(img)
moddata=uint8(zeros(1,64));
y=[1];
for row=0:63
    for col=0:63
         x=img((row*8+1):(row+1)*8,(col*8+1):(col+1)*8);
         A=uint8(y);
         for k=1:8
         A=[A x(k,:)];            
         end
         A=A(1,2:end);
         moddata=[moddata;A];      
    end

    
end
moddata=moddata(2:end,:);
end
