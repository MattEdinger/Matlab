%VALID_DATE 
%valid = VALID_DATE(ano, mes, dia) retorna
% 0 ou 1 l�gicos para cada data inserida.
%A fun��o leva em considera��o anos bissextos.
%*fun��o desenvolvida durante o curso de matlab
%da Universidade Vanderbilt.*
%Assignment: Lesson 5 Wrap-up
%Mateus Edinger

function valid = valid_date(ano, mes, dia)

if nargin ~= 3                                                              %Verifica a quantidade de inputs.
    valid = false;
    error('Too few input arguments')

elseif ~isscalar(ano) || ~isscalar(mes) || ~isscalar(dia)                   %Verifica se input � scalar.
       valid = false;
       error('Inputs must be scalars')

elseif ano < 1 || mes < 1 || dia < 1                                        %Verifica se inputs s�o positivos.
       valid = false;
       error('Inputs must be positive integers')

elseif mes > 12 || dia > 31                                                 %Verifica se inputs s�o v�lidos como data.
    valid = false;
    error('Impossible date configuration')

elseif mes == 2                                                             %Verifica condi��o para ano bissexto.
        if rem(ano, 400) == 0 || (rem(ano, 4) == 0 && ... 
                rem(ano, 100) ~= 0) && dia <= 29         
            valid = true;
            
        elseif (rem(ano, 400) ~= 0 || (rem(ano, 4) == 0 && ... 
                rem(ano, 100) == 0)) && dia <= 28          
                valid = true;
        
        else           
            valid = false;
            
        end
        
else                                                                        %Verifica o ultimo dia de cada m�s.
    if (ismember(mes, [4 6 9 11]) && ismember(dia, [1:30])) || ... 
            (ismember(mes, [1 3 5 7 8 10 12]) && ismember(dia, [1:31]))
       valid = true;
  
    else
        valid = false;

    end  
end