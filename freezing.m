%FREEZING
%numfreeze = FREEZING(A) recebe um vetor como input e retorna 
%a soma de quantas vezes foi registrado valores menores que 32
%Essa função foi escrita para atividade avaliativa sobre Logical Arrays

function numfreeze = freezing(A)
numfreeze = sum(A<32);
end