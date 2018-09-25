fileID = fopen('capitulo3.txt');
formatSpec = '%s';
C = textscan(fileID,formatSpec,'delimiter','<');
var = [];

for i = 1:length(C{1,1})
    a = C{1,1}(i);
    at = a{1,1};
    idx = strfind(at,'>');
    if ~isempty(idx)
        var = [var;cellstr(at(1:idx-1))];
    end
end
xlswrite('variables.xlsx',var,'Ch3')