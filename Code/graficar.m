function graficar(p,t,mPru,tPru,aPruebas,aEntrenamiento,Eit,Eval,valepoch,epocas_ejecutadas,historico_w,historico_b,handles,tipo_problema)    

    if ~isempty(Eit)
        range=(valepoch:valepoch:epocas_ejecutadas);
        
        p1=plot(handles.error,Eit);
        hold(handles.error,'on') 
        p2=plot(handles.error,range,Eval,'o');
        legend([p1 p2],{'Error entrenamiento','Error validación'})
        for cont=1:length(Eval)
            line(handles.error,[range(cont) range(cont)], [0 Eval(cont)],'Color','red');
        end
        hold(handles.error,'off')
        legend([p1 p2],{'Error entrenamiento','Error validación'})
    end
    
    plot(handles.r_entrenamiento,p,aEntrenamiento,'o')
    hold(handles.r_entrenamiento,'on') 
    plot(handles.r_entrenamiento,p,t)
    legend(handles.r_entrenamiento,'y = Red neuronal','y = Targets')
    hold(handles.r_entrenamiento,'off')
    
    plot(handles.r_pruebas,mPru,aPruebas,'x')
    hold(handles.r_pruebas,'on') 
    plot(handles.r_pruebas,mPru,tPru,'o')
    legend(handles.r_pruebas,'y = Red neuronal','y = Targets')
    hold(handles.r_pruebas,'off')
    
    %if ~isempty(historico_w)
    %    plot(handles.actualizacion_pesos,1:length(historico_w{1}(:,1)),historico_w{1})
    %    plot(handles.actualizacion_bias,1:length(historico_b{1}(:,1)),historico_b{1})
    
        %for cont=1:length(historico_w)        
        %    figure('Name',['Actualización de pesos, capa: ' num2str(cont)]);
        %    plot(1:length(historico_w{1}(:,1)),historico_w{cont})
        %    figure('Name',['Actualización de bias, capa: ' num2str(cont)]);
        %    plot(1:length(historico_b{1}(:,1)),historico_b{cont})
        %end
    %end
end