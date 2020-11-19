function varargout = main(varargin)
% main MATLAB code for main.fig
%      main, by itself, creates a new main or raises the existing
%      singleton*.
%
%      H = main returns the handle to a new main or the handle to
%      the existing singleton*.
%
%      main('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in main.M with the given input arguments.
%
%      main('Property','Value',...) creates a new main or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 22-Jun-2018 08:10:21

% Coded by Franz L. Lake Moctezuma

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global w
global b

w={};
b={};


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in tipo.
function tipo_Callback(hObject, eventdata, handles)
% hObject    handle to tipo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipo contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipo


% --- Executes during object creation, after setting all properties.
function tipo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function maxepoch_Callback(hObject, eventdata, handles)
% hObject    handle to maxepoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxepoch as text
%        str2double(get(hObject,'String')) returns contents of maxepoch as a double


% --- Executes during object creation, after setting all properties.
function maxepoch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxepoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function minEtrain_Callback(hObject, eventdata, handles)
% hObject    handle to minEtrain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minEtrain as text
%        str2double(get(hObject,'String')) returns contents of minEtrain as a double


% --- Executes during object creation, after setting all properties.
function minEtrain_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minEtrain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valepoch_Callback(hObject, eventdata, handles)
% hObject    handle to valepoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valepoch as text
%        str2double(get(hObject,'String')) returns contents of valepoch as a double


% --- Executes during object creation, after setting all properties.
function valepoch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valepoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numval_Callback(hObject, eventdata, handles)
% hObject    handle to numval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numval as text
%        str2double(get(hObject,'String')) returns contents of numval as a double


% --- Executes during object creation, after setting all properties.
function numval_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_Callback(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha as text
%        str2double(get(hObject,'String')) returns contents of alpha as a double


% --- Executes during object creation, after setting all properties.
function alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function capas_Callback(hObject, eventdata, handles)
% hObject    handle to capas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of capas as text
%        str2double(get(hObject,'String')) returns contents of capas as a double


% --- Executes during object creation, after setting all properties.
function capas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to capas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function transferencia_Callback(hObject, eventdata, handles)
% hObject    handle to transferencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of transferencia as text
%        str2double(get(hObject,'String')) returns contents of transferencia as a double


% --- Executes during object creation, after setting all properties.
function transferencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to transferencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in entrenar.
function entrenar_Callback(hObject, eventdata, handles)
% hObject    handle to entrenar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global archivo_dataset
global archivo_targets
global w
global b

[alpha, maxepoch, minEtrain, valepoch, numval, dEnt, vcn, vtf,tipo_problema] = obtener_datos(handles);
[P,T]=obtenerDataset(archivo_dataset, archivo_targets); %Dataset
if isempty(w)
    [w,b]=inicializardatos(vcn); %Inicialización de pesos y bias
end
[mEnt,mVal,mPru,tEnt,tVal,tPru]=divDataset(P,T,dEnt); %División del dataset
[Eit,Eval,w,b,historico_w,historico_b,epocas_ejecutadas] = mlp(vtf,alpha,maxepoch,minEtrain,valepoch,numval,w,b,mEnt,mVal,tEnt,tVal,handles); %Llama a la red
aEntrenamiento=pruebas(w,b,P,vtf);
aPruebas=pruebas(w,b,mPru,vtf);
graficar(P,T,mPru,tPru,aPruebas,aEntrenamiento,Eit,Eval,valepoch,epocas_ejecutadas,historico_w,historico_b,handles,tipo_problema)
set(handles.error_e, 'String', num2str(Eit(end)));
set(handles.error_v, 'String', num2str(Eval(end)));
set(handles.error_p, 'String', num2str(sum(abs(tPru-aPruebas))/length(aPruebas)));
%imprime_resultados(w,b);
    

% --- Executes during object creation, after setting all properties.
function dataset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in get_dataset.
function get_dataset_Callback(hObject, eventdata, handles)
% hObject    handle to get_dataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global archivo_dataset

[filename, pathname] = uigetfile('*.txt', 'Entradas');
archivo_dataset = [pathname, filename];
set(handles.dataset, 'String', archivo_dataset);


function targets_Callback(hObject, eventdata, handles)
% hObject    handle to targets (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of targets as text
%        str2double(get(hObject,'String')) returns contents of targets as a double


% --- Executes during object creation, after setting all properties.
function targets_CreateFcn(hObject, eventdata, handles)
% hObject    handle to targets (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in get_targets.
function get_targets_Callback(hObject, eventdata, handles)
% hObject    handle to get_targets (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global archivo_targets

[filename, pathname] = uigetfile('*.txt', 'Targets');
archivo_targets = [pathname, filename];
set(handles.targets, 'String', archivo_targets);


% --- Executes on selection change in division.
function division_Callback(hObject, eventdata, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns division contents as cell array
%        contents{get(hObject,'Value')} returns selected item from division


% --- Executes during object creation, after setting all properties.
function division_CreateFcn(hObject, eventdata, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in propagar.
function propagar_Callback(hObject, eventdata, handles)
% hObject    handle to propagar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w
global b
global archivo_dataset
global archivo_targets

if isempty(w)
    set(handles.mensaje, 'String', 'No se ha cargado ninguna RNA');
else
    [alpha, maxepoch, minEtrain, valepoch, numval, dEnt, vcn, vtf,tipo_problema] = obtener_datos(handles);
    [P,T]=obtenerDataset(archivo_dataset, archivo_targets);
    [mEnt,mVal,mPru,tEnt,tVal,tPru]=divDataset(P,T,dEnt); %División del dataset
    aEntrenamiento=pruebas(w,b,P,vtf);
    aPruebas=pruebas(w,b,mPru,vtf);
    graficar(P,T,mPru,tPru,aPruebas,aEntrenamiento,[],[],[],[],[],[],handles,[])
    set(handles.error_p, 'String', num2str(sum(abs(tPru-aPruebas))/length(aPruebas)));
end


% --- Executes on button press in borrar.
function borrar_Callback(hObject, eventdata, handles)
% hObject    handle to borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w
global b

w={};
b={};

set(handles.error_e,'String','')
set(handles.error_v,'String','')
set(handles.error_p,'String','')

cla(handles.error);
%cla(handles.actualizacion_pesos);
%cla(handles.actualizacion_bias);
cla(handles.r_entrenamiento);
cla(handles.r_pruebas);


% --- Executes on button press in guardar.
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w
global b

[file,path] = uiputfile('w_b.mat');
save([path,file],'w','b');

% -----------------------------------------------%
%       Guarda las matrices w y b en un .txt     %
% -----------------------------------------------%

%f = fopen([path,file], 'wt');
%for cont=1:length(w)
%    dlmwrite([path,file],w{cont},'-append','delimiter','\t','roffset',1)
%    dlmwrite([path,file],b{cont},'-append','delimiter','\t','roffset',1)
%    %dlmwrite([path,file],b{cont},'-append','delimiter','\t','precision',6,'roffset',1)
%    %dlmwrite([path,file],w{cont},'-append','delimiter','\t','precision',6,'roffset',1)
%end
%fclose(f);

% -----------------------------------------------%


% --- Executes on button press in cargar.
function cargar_Callback(hObject, eventdata, handles)
% hObject    handle to cargar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w
global b

borrar_Callback(hObject, eventdata, handles);

[filename, pathname] = uigetfile('*.mat', 'Entradas');
data=load([pathname,filename],'w','b');

w=data.w;
b=data.b;
vcn=num2str(1);
vtf='';

for cont=1:length(w)
   [filas, columnas] = size(w{cont});
   vcn = [vcn,' ',num2str(filas)];
   if cont <= length(w)-1
       vtf = [vtf,' ',num2str(2)];
   end
end

vtf = [vtf,' ',num2str(1)];

set(handles.capas, 'String', vcn);
set(handles.transferencia, 'String', vtf);


function [alpha, maxepoch, minEtrain, valepoch, numval, dEnt, vcn, vtf,tipo_problema] = obtener_datos(handles)
    alpha=str2double(get(handles.alpha,'String'));
    maxepoch=str2double(get(handles.maxepoch,'String'));
    minEtrain=str2double(get(handles.minEtrain,'String'));
    valepoch=str2double(get(handles.valepoch,'String'));
    numval=str2double(get(handles.numval,'String'));
    vcn=str2num(get(handles.capas,'String'));
    vtf=str2num(get(handles.transferencia,'String'));
    tipo_problema=get(handles.tipo,'Value');
    dEnt=get(handles.division,'Value');
    if dEnt==1
        dEnt=[70 15 15];
    else
        dEnt=[80 10 10];
    end
