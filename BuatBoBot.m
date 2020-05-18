function varargout = BuatBoBot(varargin)
% BUATBOBOT MATLAB code for BuatBoBot.fig
%      BUATBOBOT, by itself, creates a new BUATBOBOT or raises the existing
%      singleton*.
%
%      H = BUATBOBOT returns the handle to a new BUATBOBOT or the handle to
%      the existing singleton*.
%
%      BUATBOBOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BUATBOBOT.M with the given input arguments.
%
%      BUATBOBOT('Property','Value',...) creates a new BUATBOBOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BuatBoBot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BuatBoBot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BuatBoBot

% Last Modified by GUIDE v2.5 05-May-2020 20:00:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BuatBoBot_OpeningFcn, ...
                   'gui_OutputFcn',  @BuatBoBot_OutputFcn, ...
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


% --- Executes just before BuatBoBot is made visible.
function BuatBoBot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BuatBoBot (see VARARGIN)

% Choose default command line output for BuatBoBot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(hObject,'center');
% UIWAIT makes BuatBoBot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BuatBoBot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = get(handles.edit1,'String');
no = 0;

minat = get(handles.popupmenu1,'Value');
if minat == 1
    bidang_1 = '0,05';
elseif minat == 2
    bidang_1 = '0,15';
elseif minat == 3
    bidang_1 = '0,25';
elseif minat == 4
    bidang_1 = '0,5';
elseif minat == 5
    bidang_1 = '0,75';
elseif minat == 6
    bidang_1 = '1';
end

minat = get(handles.popupmenu2,'Value');
if minat == 1
    bidang_2 = '0,05';
elseif minat == 2
    bidang_2 = '0,15';
elseif minat == 3
    bidang_2 = '0,25';
elseif minat == 4
    bidang_2 = '0,5';
elseif minat == 5
    bidang_2 = '0,75';
elseif minat == 6
    bidang_2 = '1';
end

minat = get(handles.popupmenu3,'Value');
if minat == 1
    bidang_3 = '0,05';
elseif minat == 2
    bidang_3 = '0,15';
elseif minat == 3
    bidang_3 = '0,25';
elseif minat == 4
    bidang_3 = '0,5';
elseif minat == 5
    bidang_3 = '0,75';
elseif minat == 6
    bidang_3 = '1';
end

minat = get(handles.popupmenu4,'Value');
if minat == 1
    bidang_4 = '0,05';
elseif minat == 2
    bidang_4 = '0,15';
elseif minat == 3
    bidang_4 = '0,25';
elseif minat == 4
    bidang_4 = '0,5';
elseif minat == 5
    bidang_4 = '0,75';
elseif minat == 6
    bidang_4 = '1';
end

minat = get(handles.popupmenu5,'Value');
if minat == 1
    bidang_5 = '0,05';
elseif minat == 2
    bidang_5 = '0,15';
elseif minat == 3
    bidang_5 = '0,25';
elseif minat == 4
    bidang_5 = '0,5';
elseif minat == 5
    bidang_5 = '0,75';
elseif minat == 6
    bidang_5 = '1';
end


minat = get(handles.popupmenu6,'Value');
if minat == 1
    bidang_6 = '0,05';
elseif minat == 2
    bidang_6 = '0,15';
elseif minat == 3
    bidang_6 = '0,25';
elseif minat == 4
    bidang_6 = '0,5';
elseif minat == 5
    bidang_6 = '0,75';
elseif minat == 6
    bidang_6 = '1';
end

if numel(no) == 0 %dari no enoll
    no = 1; %nomor + 1
    range = 'A1';  %agar memulai dari rang a1
else
    no = numel(no); %menambah data sesuai no + 1 intinya gitu mas susah juga jelasin
    range = strcat(['A',num2str(no)]); 
end

if isempty(filename)
    warndlg('nama File tidak boleh kosong','Warning');
else
    data = table(cell({ bidang_1, bidang_2, bidang_3, bidang_4, bidang_5 , bidang_6}));
    writetable(data,filename,'Sheet',1,'Range',range,'WriteVariableNames',false)
    msgbox(strcat(['berhasil disimpan']),'Message')
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','')
 
set(handles.popupmenu1,'Value',1)
set(handles.popupmenu2,'Value',1)
set(handles.popupmenu3,'Value',1)
set(handles.popupmenu4,'Value',1)
set(handles.popupmenu5,'Value',1)
set(handles.popupmenu6,'Value',1)
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
guidata(Menukedua);


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
