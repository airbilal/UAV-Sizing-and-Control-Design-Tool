function varargout = UAV_main_gui(varargin)
% UAV_MAIN_GUI MATLAB code for UAV_main_gui.fig
%      UAV_MAIN_GUI, by itself, creates a new UAV_MAIN_GUI or raises the existing
%      singleton*.
%
%      H = UAV_MAIN_GUI returns the handle to a new UAV_MAIN_GUI or the handle to
%      the existing singleton*.
%
%      UAV_MAIN_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UAV_MAIN_GUI.M with the given input arguments.
%
%      UAV_MAIN_GUI('Property','Value',...) creates a new UAV_MAIN_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UAV_main_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UAV_main_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UAV_main_gui

% Last Modified by GUIDE v2.5 04-Feb-2017 17:41:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UAV_main_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @UAV_main_gui_OutputFcn, ...
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


% --- Executes just before UAV_main_gui is made visible.
function UAV_main_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UAV_main_gui (see VARARGIN)

% Choose default command line output for UAV_main_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UAV_main_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UAV_main_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')
% --- Executes on button press in mp.
function mp_Callback(hObject, eventdata, handles)
% hObject    handle to mp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','On')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')
% --- Executes on button press in sl.
function sl_Callback(hObject, eventdata, handles)
% hObject    handle to sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','On')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')

% --- Executes on button press in wd.
function wd_Callback(hObject, eventdata, handles)
% hObject    handle to wd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','On')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')

% --- Executes on button press in htd.
function htd_Callback(hObject, eventdata, handles)
% hObject    handle to htd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','On')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')

% --- Executes on button press in vtd.
function vtd_Callback(hObject, eventdata, handles)
% hObject    handle to vtd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','On')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')

% --- Executes on button press in fp.
function fp_Callback(hObject, eventdata, handles)
% hObject    handle to fp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','On')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')

% --- Executes on button press in fd.
function fd_Callback(hObject, eventdata, handles)
% hObject    handle to fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','On')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')

% --- Executes on button press in cs.
function cs_Callback(hObject, eventdata, handles)
% hObject    handle to cs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','On')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','Off')

% --- Executes on button press in ac.
function ac_Callback(hObject, eventdata, handles)
% hObject    handle to ac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','On')
set(handles.twui,'Visible','Off')

% --- Executes on button press in tw.
function tw_Callback(hObject, eventdata, handles)
% hObject    handle to tw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mpui,'Visible','Off')
set(handles.slui,'Visible','Off')
set(handles.wdui,'Visible','Off')
set(handles.htdui,'Visible','Off')
set(handles.vtdui,'Visible','Off')
set(handles.fdui,'Visible','Off')
set(handles.fpui,'Visible','Off')
set(handles.csui,'Visible','Off')
set(handles.acui,'Visible','Off')
set(handles.twui,'Visible','On')


function invttvtpan_Callback(hObject, eventdata, handles)
% hObject    handle to invttvtpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invttvtpan as text
%        str2double(get(hObject,'String')) returns contents of invttvtpan as a double


% --- Executes during object creation, after setting all properties.
function invttvtpan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invttvtpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invttype_Callback(hObject, eventdata, handles)
% hObject    handle to invttype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invttype as text
%        str2double(get(hObject,'String')) returns contents of invttype as a double


% --- Executes during object creation, after setting all properties.
function invttype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invttype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invtboom_Callback(hObject, eventdata, handles)
% hObject    handle to invtboom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invtboom as text
%        str2double(get(hObject,'String')) returns contents of invtboom as a double


% --- Executes during object creation, after setting all properties.
function invtboom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invtboom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invtvertup_Callback(hObject, eventdata, handles)
% hObject    handle to invtvertup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invtvertup as text
%        str2double(get(hObject,'String')) returns contents of invtvertup as a double


% --- Executes during object creation, after setting all properties.
function invtvertup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invtvertup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invtar_Callback(hObject, eventdata, handles)
% hObject    handle to invtar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invtar as text
%        str2double(get(hObject,'String')) returns contents of invtar as a double


% --- Executes during object creation, after setting all properties.
function invtar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invtar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invtairfoil_Callback(hObject, eventdata, handles)
% hObject    handle to invtairfoil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invtairfoil as text
%        str2double(get(hObject,'String')) returns contents of invtairfoil as a double


% --- Executes during object creation, after setting all properties.
function invtairfoil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invtairfoil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invtsweepc4_Callback(hObject, eventdata, handles)
% hObject    handle to invtsweepc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invtsweepc4 as text
%        str2double(get(hObject,'String')) returns contents of invtsweepc4 as a double


% --- Executes during object creation, after setting all properties.
function invtsweepc4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invtsweepc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invttr_Callback(hObject, eventdata, handles)
% hObject    handle to invttr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invttr as text
%        str2double(get(hObject,'String')) returns contents of invttr as a double


% --- Executes during object creation, after setting all properties.
function invttr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invttr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invtvolfac_Callback(hObject, eventdata, handles)
% hObject    handle to invtvolfac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invtvolfac as text
%        str2double(get(hObject,'String')) returns contents of invtvolfac as a double


% --- Executes during object creation, after setting all properties.
function invtvolfac_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invtvolfac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhtar_Callback(hObject, eventdata, handles)
% hObject    handle to inhtar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhtar as text
%        str2double(get(hObject,'String')) returns contents of inhtar as a double


% --- Executes during object creation, after setting all properties.
function inhtar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhtar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhtvolfac_Callback(hObject, eventdata, handles)
% hObject    handle to inhtvolfac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhtvolfac as text
%        str2double(get(hObject,'String')) returns contents of inhtvolfac as a double


% --- Executes during object creation, after setting all properties.
function inhtvolfac_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhtvolfac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhttr_Callback(hObject, eventdata, handles)
% hObject    handle to inhttr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhttr as text
%        str2double(get(hObject,'String')) returns contents of inhttr as a double


% --- Executes during object creation, after setting all properties.
function inhttr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhttr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhtsweepc4_Callback(hObject, eventdata, handles)
% hObject    handle to inhtsweepc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhtsweepc4 as text
%        str2double(get(hObject,'String')) returns contents of inhtsweepc4 as a double


% --- Executes during object creation, after setting all properties.
function inhtsweepc4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhtsweepc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhtdihedral_Callback(hObject, eventdata, handles)
% hObject    handle to inhtdihedral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhtdihedral as text
%        str2double(get(hObject,'String')) returns contents of inhtdihedral as a double


% --- Executes during object creation, after setting all properties.
function inhtdihedral_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhtdihedral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhtincidence_Callback(hObject, eventdata, handles)
% hObject    handle to inhtincidence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhtincidence as text
%        str2double(get(hObject,'String')) returns contents of inhtincidence as a double


% --- Executes during object creation, after setting all properties.
function inhtincidence_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhtincidence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhtplace_Callback(hObject, eventdata, handles)
% hObject    handle to inhtplace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhtplace as text
%        str2double(get(hObject,'String')) returns contents of inhtplace as a double


% --- Executes during object creation, after setting all properties.
function inhtplace_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhtplace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhttype_Callback(hObject, eventdata, handles)
% hObject    handle to inhttype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhttype as text
%        str2double(get(hObject,'String')) returns contents of inhttype as a double


% --- Executes during object creation, after setting all properties.
function inhttype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhttype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhtairfoil_Callback(hObject, eventdata, handles)
% hObject    handle to inhtairfoil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhtairfoil as text
%        str2double(get(hObject,'String')) returns contents of inhtairfoil as a double


% --- Executes during object creation, after setting all properties.
function inhtairfoil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhtairfoil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwinitestim_Callback(hObject, eventdata, handles)
% hObject    handle to inwinitestim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwinitestim as text
%        str2double(get(hObject,'String')) returns contents of inwinitestim as a double


% --- Executes during object creation, after setting all properties.
function inwinitestim_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwinitestim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inatmrhosealvl_Callback(hObject, eventdata, handles)
% hObject    handle to inatmrhosealvl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inatmrhosealvl as text
%        str2double(get(hObject,'String')) returns contents of inatmrhosealvl as a double


% --- Executes during object creation, after setting all properties.
function inatmrhosealvl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inatmrhosealvl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inatmrhomidalt_Callback(hObject, eventdata, handles)
% hObject    handle to inatmrhomidalt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inatmrhomidalt as text
%        str2double(get(hObject,'String')) returns contents of inatmrhomidalt as a double


% --- Executes during object creation, after setting all properties.
function inatmrhomidalt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inatmrhomidalt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inatmrhocrualt_Callback(hObject, eventdata, handles)
% hObject    handle to inatmrhocrualt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inatmrhocrualt as text
%        str2double(get(hObject,'String')) returns contents of inatmrhocrualt as a double


% --- Executes during object creation, after setting all properties.
function inatmrhocrualt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inatmrhocrualt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inctrlsurfailystart_Callback(hObject, eventdata, handles)
% hObject    handle to inctrlsurfailystart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inctrlsurfailystart as text
%        str2double(get(hObject,'String')) returns contents of inctrlsurfailystart as a double


% --- Executes during object creation, after setting all properties.
function inctrlsurfailystart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inctrlsurfailystart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inctrlsurfrdrcrdratio_Callback(hObject, eventdata, handles)
% hObject    handle to inctrlsurfrdrcrdratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inctrlsurfrdrcrdratio as text
%        str2double(get(hObject,'String')) returns contents of inctrlsurfrdrcrdratio as a double


% --- Executes during object creation, after setting all properties.
function inctrlsurfrdrcrdratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inctrlsurfrdrcrdratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inctrlsurfelvcrdratio_Callback(hObject, eventdata, handles)
% hObject    handle to inctrlsurfelvcrdratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inctrlsurfelvcrdratio as text
%        str2double(get(hObject,'String')) returns contents of inctrlsurfelvcrdratio as a double


% --- Executes during object creation, after setting all properties.
function inctrlsurfelvcrdratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inctrlsurfelvcrdratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inctrlsurfailyend_Callback(hObject, eventdata, handles)
% hObject    handle to inctrlsurfailyend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inctrlsurfailyend as text
%        str2double(get(hObject,'String')) returns contents of inctrlsurfailyend as a double


% --- Executes during object creation, after setting all properties.
function inctrlsurfailyend_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inctrlsurfailyend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inctrlsurfailcrdratio_Callback(hObject, eventdata, handles)
% hObject    handle to inctrlsurfailcrdratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inctrlsurfailcrdratio as text
%        str2double(get(hObject,'String')) returns contents of inctrlsurfailcrdratio as a double


% --- Executes during object creation, after setting all properties.
function inctrlsurfailcrdratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inctrlsurfailcrdratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intkofdist_Callback(hObject, eventdata, handles)
% hObject    handle to intkofdist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intkofdist as text
%        str2double(get(hObject,'String')) returns contents of intkofdist as a double


% --- Executes during object creation, after setting all properties.
function intkofdist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intkofdist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intkofpar_Callback(hObject, eventdata, handles)
% hObject    handle to intkofpar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intkofpar as text
%        str2double(get(hObject,'String')) returns contents of intkofpar as a double


% --- Executes during object creation, after setting all properties.
function intkofpar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intkofpar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhpw0_Callback(hObject, eventdata, handles)
% hObject    handle to inhpw0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhpw0 as text
%        str2double(get(hObject,'String')) returns contents of inhpw0 as a double


% --- Executes during object creation, after setting all properties.
function inhpw0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhpw0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inoswal_Callback(hObject, eventdata, handles)
% hObject    handle to inoswal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inoswal as text
%        str2double(get(hObject,'String')) returns contents of inoswal as a double


% --- Executes during object creation, after setting all properties.
function inoswal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inoswal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inclmax_Callback(hObject, eventdata, handles)
% hObject    handle to inclmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inclmax as text
%        str2double(get(hObject,'String')) returns contents of inclmax as a double


% --- Executes during object creation, after setting all properties.
function inclmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inclmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function incbhpltr_Callback(hObject, eventdata, handles)
% hObject    handle to incbhpltr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of incbhpltr as text
%        str2double(get(hObject,'String')) returns contents of incbhpltr as a double


% --- Executes during object creation, after setting all properties.
function incbhpltr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incbhpltr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function incbhpcru_Callback(hObject, eventdata, handles)
% hObject    handle to incbhpcru (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of incbhpcru as text
%        str2double(get(hObject,'String')) returns contents of incbhpcru as a double


% --- Executes during object creation, after setting all properties.
function incbhpcru_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incbhpcru (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inprpef_Callback(hObject, eventdata, handles)
% hObject    handle to inprpef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inprpef as text
%        str2double(get(hObject,'String')) returns contents of inprpef as a double


% --- Executes during object creation, after setting all properties.
function inprpef_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inprpef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwfracwarmpto_Callback(hObject, eventdata, handles)
% hObject    handle to inwfracwarmpto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwfracwarmpto as text
%        str2double(get(hObject,'String')) returns contents of inwfracwarmpto as a double


% --- Executes during object creation, after setting all properties.
function inwfracwarmpto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwfracwarmpto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function incd_Callback(hObject, eventdata, handles)
% hObject    handle to incd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of incd as text
%        str2double(get(hObject,'String')) returns contents of incd as a double


% --- Executes during object creation, after setting all properties.
function incd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function infujfacpropdia_Callback(hObject, eventdata, handles)
% hObject    handle to infujfacpropdia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of infujfacpropdia as text
%        str2double(get(hObject,'String')) returns contents of infujfacpropdia as a double


% --- Executes during object creation, after setting all properties.
function infujfacpropdia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to infujfacpropdia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwfracland_Callback(hObject, eventdata, handles)
% hObject    handle to inwfracland (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwfracland as text
%        str2double(get(hObject,'String')) returns contents of inwfracland as a double


% --- Executes during object creation, after setting all properties.
function inwfracland_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwfracland (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwfracdsnt_Callback(hObject, eventdata, handles)
% hObject    handle to inwfracdsnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwfracdsnt as text
%        str2double(get(hObject,'String')) returns contents of inwfracdsnt as a double


% --- Executes during object creation, after setting all properties.
function inwfracdsnt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwfracdsnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwfracrsrv_Callback(hObject, eventdata, handles)
% hObject    handle to inwfracrsrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwfracrsrv as text
%        str2double(get(hObject,'String')) returns contents of inwfracrsrv as a double


% --- Executes during object creation, after setting all properties.
function inwfracrsrv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwfracrsrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function infujfacw_Callback(hObject, eventdata, handles)
% hObject    handle to infujfacw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of infujfacw as text
%        str2double(get(hObject,'String')) returns contents of infujfacw as a double


% --- Executes during object creation, after setting all properties.
function infujfacw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to infujfacw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwfracclmb_Callback(hObject, eventdata, handles)
% hObject    handle to inwfracclmb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwfracclmb as text
%        str2double(get(hObject,'String')) returns contents of inwfracclmb as a double


% --- Executes during object creation, after setting all properties.
function inwfracclmb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwfracclmb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function infusfine_Callback(hObject, eventdata, handles)
% hObject    handle to infusfine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of infusfine as text
%        str2double(get(hObject,'String')) returns contents of infusfine as a double


% --- Executes during object creation, after setting all properties.
function infusfine_CreateFcn(hObject, eventdata, handles)
% hObject    handle to infusfine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingsweepc4_Callback(hObject, eventdata, handles)
% hObject    handle to inwingsweepc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingsweepc4 as text
%        str2double(get(hObject,'String')) returns contents of inwingsweepc4 as a double


% --- Executes during object creation, after setting all properties.
function inwingsweepc4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingsweepc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingtr_Callback(hObject, eventdata, handles)
% hObject    handle to inwingtr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingtr as text
%        str2double(get(hObject,'String')) returns contents of inwingtr as a double


% --- Executes during object creation, after setting all properties.
function inwingtr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingtr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingdihedral_Callback(hObject, eventdata, handles)
% hObject    handle to inwingdihedral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingdihedral as text
%        str2double(get(hObject,'String')) returns contents of inwingdihedral as a double


% --- Executes during object creation, after setting all properties.
function inwingdihedral_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingdihedral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingtwist_Callback(hObject, eventdata, handles)
% hObject    handle to inwingtwist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingtwist as text
%        str2double(get(hObject,'String')) returns contents of inwingtwist as a double


% --- Executes during object creation, after setting all properties.
function inwingtwist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingtwist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingar_Callback(hObject, eventdata, handles)
% hObject    handle to inwingar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingar as text
%        str2double(get(hObject,'String')) returns contents of inwingar as a double


% --- Executes during object creation, after setting all properties.
function inwingar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingairfoiltip_Callback(hObject, eventdata, handles)
% hObject    handle to inwingairfoiltip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingairfoiltip as text
%        str2double(get(hObject,'String')) returns contents of inwingairfoiltip as a double


% --- Executes during object creation, after setting all properties.
function inwingairfoiltip_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingairfoiltip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingplace_Callback(hObject, eventdata, handles)
% hObject    handle to inwingplace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingplace as text
%        str2double(get(hObject,'String')) returns contents of inwingplace as a double


% --- Executes during object creation, after setting all properties.
function inwingplace_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingplace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingtype_Callback(hObject, eventdata, handles)
% hObject    handle to inwingtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingtype as text
%        str2double(get(hObject,'String')) returns contents of inwingtype as a double


% --- Executes during object creation, after setting all properties.
function inwingtype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingairfoilroot_Callback(hObject, eventdata, handles)
% hObject    handle to inwingairfoilroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingairfoilroot as text
%        str2double(get(hObject,'String')) returns contents of inwingairfoilroot as a double


% --- Executes during object creation, after setting all properties.
function inwingairfoilroot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingairfoilroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwingincidence_Callback(hObject, eventdata, handles)
% hObject    handle to inwingincidence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwingincidence as text
%        str2double(get(hObject,'String')) returns contents of inwingincidence as a double


% --- Executes during object creation, after setting all properties.
function inwingincidence_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwingincidence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invltr_Callback(hObject, eventdata, handles)
% hObject    handle to invltr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invltr as text
%        str2double(get(hObject,'String')) returns contents of invltr as a double


% --- Executes during object creation, after setting all properties.
function invltr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invltr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invcru_Callback(hObject, eventdata, handles)
% hObject    handle to invcru (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invcru as text
%        str2double(get(hObject,'String')) returns contents of invcru as a double


% --- Executes during object creation, after setting all properties.
function invcru_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invcru (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invst_Callback(hObject, eventdata, handles)
% hObject    handle to invst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invst as text
%        str2double(get(hObject,'String')) returns contents of invst as a double


% --- Executes during object creation, after setting all properties.
function invst_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function invmax_Callback(hObject, eventdata, handles)
% hObject    handle to invmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of invmax as text
%        str2double(get(hObject,'String')) returns contents of invmax as a double


% --- Executes during object creation, after setting all properties.
function invmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to invmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inrange_Callback(hObject, eventdata, handles)
% hObject    handle to inrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inrange as text
%        str2double(get(hObject,'String')) returns contents of inrange as a double


% --- Executes during object creation, after setting all properties.
function inrange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inwpay_Callback(hObject, eventdata, handles)
% hObject    handle to inwpay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inwpay as text
%        str2double(get(hObject,'String')) returns contents of inwpay as a double


% --- Executes during object creation, after setting all properties.
function inwpay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inwpay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inroc_Callback(hObject, eventdata, handles)
% hObject    handle to inroc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inroc as text
%        str2double(get(hObject,'String')) returns contents of inroc as a double


% --- Executes during object creation, after setting all properties.
function inroc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inroc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inaltcr_Callback(hObject, eventdata, handles)
% hObject    handle to inaltcr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inaltcr as text
%        str2double(get(hObject,'String')) returns contents of inaltcr as a double


% --- Executes during object creation, after setting all properties.
function inaltcr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inaltcr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inendur_Callback(hObject, eventdata, handles)
% hObject    handle to inendur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inendur as text
%        str2double(get(hObject,'String')) returns contents of inendur as a double


% --- Executes during object creation, after setting all properties.
function inendur_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inendur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
in.v.st=str2double(get(handles.invst,'String'))
in.v.to= in.v.st*1.1
set(handles.invto,'String',in.v.to)

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
in.v.cru=str2double(get(handles.invcru,'String'))
in.v.to=str2double(get(handles.invto,'String'))
in.v.clmb= (in.v.to+in.v.cru)/2
set(handles.invclmb,'String',in.v.clmb)

% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
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


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
in.range=str2double(set(handles.inrange,'String'))
in.at.cr=str2double(set(handles.inaltcr,'String'))
in.endur=str2double(set(handles.inendur,'String'))
in.roc=str2double(set(handles.inroc,'String'))
in.w.pay=str2double(set(handles.inwpay,'String'))
in.v.st=str2double(set(handles.invst,'String'))
in.v.cru=str2double(set(handles.invcru,'String'))
in.v.ltr=str2double(set(handles.invltr,'String'))
in.v.to=str2double(set(handles.invto,'String'))
in.v.clmb=str2double(set(handles.invclmb,'String'))
in.v.max=str2double(set(handles.invmax,'String'))
in.v.st=str2double(set(handles.invst,'String'))
%%
in.wing.ar=str2double(set(handles.inwingar,'String'))
in.wing.tr=str2double(set(handles.inwingtr,'String'))
in.wing.sweep.c_4=str2double(set(handles.inwingsweepc4,'String'))
in.wing.dihedral=str2double(set(handles.inwingdihedral,'String'))
in.wing.twist=str2double(set(handles.inwingtwist,'String'))
in.wing.airfoil.root=get(handles.inwingairfoilroot,'String')
in.wing.airfoil.tip=get(handles.inwingairfoiltip,'String')
in.wing.incidence=str2double(set(handles.inwingincidence,'String'))
in.wing.place=get(handles.popupmenu8,'String')
in.wing.type=get(handles.popupmenu7,'Value')
%%
in.fus.fine=str2double(set(handles.infusfine,'String'))
%%
in.ht.ar=str2double(set(handles.inhtar,'String'))
in.ht.tr=str2double(set(handles.inhttr,'String'))
in.ht.volfac=str2double(set(handles.inhtvolfac,'String'))
in.ht.sweep.c_4=str2double(set(handles.inhtsweepc4,'String'))
in.ht.dihedral=str2double(set(handles.inhtdihedral,'String'))
in.ht.airfoil=get(handles.inhtairfoil,'String')
in.ht.place=get(handles.popupmenu5,'String')
in.ht.incidence=str2double(set(handles.inhtincidence,'String'))
in.ht.type=str2double(set(handles.popupmenu4,'String'))
%%
in.vt.ar=str2double(set(handles.invtar,'String'))
in.vt.tr=str2double(set(handles.invttr,'String'))
in.vt.volfac=str2double(set(handles.invtvolfac,'String'))
in.vt.sweep.c_4=str2double(set(handles.invtsweepc4,'String'))
in.vt.airfoil=get(handles.invtairfoil,'String')
in.vt.tvtpan=str2double(set(handles.popupmenu3,'String'))
in.vt.boom=str2double(set(handles.invtboom,'String'))
in.vt.boom=str2double(set(handles.invtboom,'String'))
in.vt.vertup=get(handles.popupmenu2,'String')
in.vt.type=get(handles.popupmenu1,'Value')
%%
in.w.initestim=str2double(set(handles.inwinitestim,'String'))
in.vt.ar=str2double(set(handles.invtar,'String'))
in.atm.rho.sealvl=str2double(set(handles.inatmrhosealvl,'String'))
in.atm.rho.midalt=str2double(set(handles.inatmrhomidalt,'String'))
in.atm.rho.crualt=str2double(set(handles.inatmrhocrualt,'String'))
in.ctrlsurf.ail.ystart=str2double(set(handles.inctrlsurfailystart,'String'))
in.ctrlsurf.ail.yend=str2double(set(handles.inctrlsurfailyend,'String'))
in.ctrlsurf.ail.crdratio=str2double(set(handles.inctrlsurfailcrdratio,'String'))
in.ctrlsurf.elv.crdratio=str2double(set(handles.inctrlsurfelvcrdratio,'String'))
in.ctrlsurf.rdr.crdratio=str2double(set(handles.inctrlsurfrdrcrdratio,'String'))
%Flight settings%
in.Clmax=str2double(set(handles.inclmax,'String'))
in.tkofpar=str2double(set(handles.intkofpar,'String'))
in.tkofdist=str2double(set(handles.intkofdist,'String'))
in.Clmax=str2double(set(handles.inclmax,'String'))
in.hp_w0=str2double(set(handles.inhpw0,'String'))
in.oswal=str2double(set(handles.inoswal,'String'))
in.Cd0=str2double(set(handles.incd,'String'))
in.Cbhp.cru=str2double(set(handles.incbhpcru,'String'))
in.Cbhp.ltr=str2double(set(handles.incbhpltr,'String'))
in.prp_ef=str2double(set(handles.inprpef,'String'))
in.wfrac.warmupto=str2double(set(handles.inwfracwarmpto,'String'))
in.wfrac.clmb=str2double(set(handles.inwfracclmb,'String'))
in.wfrac.dsnt=str2double(set(handles.inwfracdsnt,'String'))
in.wfrac.land=str2double(set(handles.inwfracland,'String'))
in.wfrac.rsrv=str2double(set(handles.inwfracrsrv,'String'))
in.fujfac.w=str2double(set(handles.infujfacw,'String'))
in.fujfac.propdia=str2double(set(handles.infujfacpropdia,'String'))
% Mission Profile%
in.range=str2double(set(handles.inrange,'String'))
in.alt.cr=str2double(set(handles.inaltcr,'String'))
in.endur=str2double(set(handles.inendur,'String'))
in.roc=str2double(set(handles.inroc,'String'))
in.w.pay=str2double(set(handles.inwpay,'String'))

%%
%Find wing loading, W/S (lb/ft2)
o.w_s=wingloading(in);
%%
%Take off weight initial estimate

[o.w0,o.propulsion.hp,o.wfrac.cru,o.wfrac.ltr,o.wfrac.wf_wo,o.L_D.cru,...
    o.L_D.ltr]=weightestim_initial(in,o);
%%
%Initial geometric sizing
[o.wing.S,o.wing.b,o.wing.cr,o.wing.ct,o.wing.cmac,o.wing.ymac,...
 o.wing.sweep.LE,o.wing.apexX,o.wing.apexZ,o.ht.apexX,o.ht.apexZ,...
 o.vt.apexX,o.vt.apexY,o.vt.apexZ,o.fus.len,o.fus.dia,o.vt.mom_arm,...
 o.ht.mom_arm,o.fueltank.vol,o.vt.S,o.vt.b,o.vt.cr,o.vt.ct,o.vt.cmac,...
 o.ht.S,o.ht.b,o.ht.cr,o.ht.ct,o.wheel.dia,o.wheel.width,o.propulsion.prop_dia,...
 o.ctrlsurf.ail.ystart,o.ail.ctrlsurf.yend,o.ctrlsurf.ail.cmac,o.ctrlsurf.elev.cmac,...
 o.ctrlsurf.rdr.cmac,o.wing.ac,o.fus.x,o.fus.r,o.fus.S,o.fus.zup,o.fus.zdn]=sizing(in,o);
%Cg value
o.cgX=o.wing.ac;%place cg at wing aerodynamic center initially
o.cgZ=0; %vertical location of cg
%%
%Calculate Aerodynamics using USAF DATCOM
writeDATCOMfile(in,o);






















