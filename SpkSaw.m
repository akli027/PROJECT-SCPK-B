function varargout = SpkSaw(varargin) 
% SPKSAW MATLAB code for SpkSaw.fig
%      SPKSAW, by itself, creates a new SPKSAW or raises the existing
%      singleton*.
%
%      H = SPKSAW returns the handle to a new SPKSAW or the handle to
%      the existing singleton*.
%
%      SPKSAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPKSAW.M with the given input arguments.
%
%      SPKSAW('Property','Value',...) creates a new SPKSAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SpkSaw_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SpkSaw_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SpkSaw

% Last Modified by GUIDE v2.5 05-May-2020 19:49:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SpkSaw_OpeningFcn, ...
                   'gui_OutputFcn',  @SpkSaw_OutputFcn, ...
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


% --- Executes just before SpkSaw is made visible.
function SpkSaw_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SpkSaw (see VARARGIN)

% Choose default command line output for SpkSaw
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(hObject,'center');
% UIWAIT makes SpkSaw wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SpkSaw_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname]= uigetfile({'*.xlsx';},'buka_data');  %memanggil file berupa .xlsx
fullpathname = strcat(pathname, filename);  
data = xlsread(fullpathname);
set(handles.text4,'string',filename); %langsung mengambil nama file contoh trining.xlsx
set(handles.uitable2,'Data',data); %menampilkan data ke tabel

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname]= uigetfile({'*.xlsx';},'buka_data');
fullpathname = strcat(pathname, filename);
data = xlsread(fullpathname);
set(handles.text5,'string',filename); %langsung mengambil nama file contoh trining.xlsx
set(handles.uitable3,'Data',data);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname]= uigetfile({'*.xlsx';},'buka_data');
fullpathname = strcat(pathname, filename);
data = xlsread(fullpathname);
set(handles.text6,'string',filename); %langsung mengambil nama file contoh trining.xlsx
set(handles.uitable4,'Data',data);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = xlsread(get(handles.text4,'string')); %memanggil data tadi ke sini dari text 4
k = xlsread(get(handles.text6,'string')); % ini sama

[m n]=size (x); %matriks m x n dengan ukuran sebanyak variabel x (input)
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong
for j=1:n,
 if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
  R(:,j)=x(:,j)./max(x(:,j));
 else
  R(:,j)=min(x(:,j))./x(:,j);
 end;
  set(handles.uitable6,'Data',R);  %gak terlalu paham mas hee soal belum ada yang jelasin tapi alhamdulilah bisa buat kek gini karna mbah google
end;
w = xlsread(get(handles.text5,'string'));
for i=1:m,
 V(i)= sum(w.*R(i,:))
 set(handles.uitable5,'Data',V);
 [nilai,urutan]=max(V)
 set(handles.text12,'string',(nilai)); %mengeluarkan data tertinggi
  set(handles.text14,'string',(urutan)); %mengeluarkan urutan keberapa
end;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text4,'string',''); %menghapus nilai pada text4
set(handles.text5,'string','');
set(handles.text6,'string','');
set(handles.text12,'string','');
set(handles.text14,'string','');
set(handles.uitable2, 'Data', {})
set(handles.uitable3, 'Data', {})
set(handles.uitable4, 'Data', {})
set(handles.uitable5, 'Data', {})
set(handles.uitable6, 'Data', {})
clc;
%menghapus data pada tabel


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%untuk keluar Program
clc;
                                           
  
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
guidata(Menukedua);
