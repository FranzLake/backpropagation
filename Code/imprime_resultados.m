function imprime_resultados(w,b)
    for cont=1:length(w)
        fprintf('\n\nw%d=\n',cont)
        fprintf([repmat('%f\t', 1, size(w{cont}, 2)) '\n'], w{cont}');
        fprintf('\n\nb%d=\n',cont)
        fprintf([repmat('%f\t', 1, size(b{cont}, 2)) '\n'], b{cont}');
    end
end

