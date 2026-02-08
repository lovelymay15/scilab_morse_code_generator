funcprot(0);

function GUI()
f=figure('figure_position',[400,50],'figure_size',[940,680],'auto_resize','on','background',[29],'figure_name','Morse Code Generator (M.C.G)','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','visible','off','closerequestfcn','close_figure');

//Handles
handles.AppName=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Times New Roman','FontSize',[20],'FontUnits','points','FontWeight','bold','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2740385,0.8771429,0.4663462,0.0884354],'Relief','groove','SliderStep',[0.01,0.1],'String','Morse Code Generator','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','AppName','Callback','')
handles.InputImage=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5448718,0.7478481,0.1730769,0.0793651],'Relief','raised','SliderStep',[0.01,0.1],'String','Input Image','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Input','Callback','InputImage_callback(handles)')
handles.LoadImage= newaxes();handles.LoadImage.margins = [0 0 0 0];handles.LoadImage.axes_bounds = [0.036859,0.1478005,0.4519231,0.4331066]; handles.LoadImage.visible = 'on'; handles.LoadImage.box = 'off';
handles.Extract=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5448718,0.6444444,0.1730769,0.0793651],'Relief','raised','SliderStep',[0.01,0.1],'String','Extract Text','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Extract','Callback','Extract_callback(handles)')
handles.Generate=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5448718,0.542161,0.1730769,0.0793651],'Relief','raised','SliderStep',[0.01,0.1],'String','Generate M.C','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Generate','Callback','Generate_callback(handles)')
handles.PlaySound=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7648718,0.7478481,0.1730769,0.0793651],'Relief','raised','SliderStep',[0.01,0.1],'String','Play Sound','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Play','Callback','PlaySound_callback(handles)')
handles.StopSound=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7648718,0.6444444,0.1730769,0.0793651],'Relief','raised','SliderStep',[0.01,0.1],'String','Stop Sound','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Extract','Callback','StopSound_callback(handles)')
handles.SaveSound=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7648718,0.542161,0.1730769,0.0793651],'Relief','raised','SliderStep',[0.01,0.1],'String','Save Sound','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Save','Callback','SaveSound_callback(handles)')
handles.ExtractedText=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.036859,0.0449433,0.4503205,0.3514739],'Relief','sunken','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','ExtractText','Scrollable', 'on','Callback','')
handles.MorseCode=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5080128,0.0449433,0.4503205,0.3514739],'Relief','sunken','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','MorseCode', 'Scrollable', 'on','Callback','')
handles.Reset=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6548718,0.438161,0.1730769,0.0793651],'Relief','raised','SliderStep',[0.01,0.1],'String','Reset','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Reset','Callback','Reset_callback(handles)')

f.visible = "on";
f.userdata = handles;
endfunction

function close_figure(handles)
    playsnd([]);
    delete(gcf());
endfunction


//Callbacks
function InputImage_callback(handles)
    resp = messagebox("No cursive texts!", "Note", "info", ["OK"], "modal");
    if resp == 1 then
    handles = gcf().userdata;
    imgInput = uigetfile(['*.jpeg';'*.jpg';'*.png']);
    
    if isempty(imgInput) then
        return;
    end
    
    //IMAGE INPUT
    [path, fname, extension] = fileparts(imgInput);
    ext = fileparts(imgInput,'extension');
    ext = convstr(ext,'l');
        if (ext == '.jpg') || (ext == '.jpeg') || (ext == '.png') then
            imgread = imread(imgInput);
            handles.imgInput = imgInput;
            imshow(imgread);
            
            set(handles.Extract, 'Enable', 'on');
            set(handles.Reset, 'Enable', 'on');
            set(handles.InputImage, 'Enable', 'off');
        else
            messagebox("Invalid Input Type! [jpg/jpeg/png only]", "Error", "error", ["OK"], "modal");
        end
        gcf().userdata = handles;
        end
endfunction


function morse=textToMorse(text_array)
    morseDict = struct("A",".-","B","-...", "C", "-.-.", "D", "-..", "E", ".", "F", "..-.", "G", "--.", "H", "....", "I", "..", "J", ".---", "K", "-.-", "L", ".-..", "M", "--", "N", "-.", "O", "---", "P", ".--.", "Q", "--.-", "R", ".-.", "S", "...", "T", "-", "U", "..-", "V", "...-", "W", ".--", "X", "-..-", "Y", "-.--", "Z", "--..", "1", ".----", "2", "..---", "3", "...--", "4", "....-", "5", ".....", "6", "-....", "7", "--...", "8", "---..", "9", "----.", "0", "-----", ".", ".-.-.-", ",", "--..--", "?", "..--..", "''", ".----.","""",".-..-.","!", "-.-.--", "/", "-..-.", "(", "-.--.", ")", "-.--.-", "&", ".-...", ":", "---...", ";", "-.-.-.", "=", "-...-", "+", ".-.-.", "-", "-....-", "_", "..--.-", "\", ".-..-.", "$", "...-..-", "@", ".--.-.");
    
    function line_morse = processLine(single_line)
        line_morse = "";
        words = strsplit(single_line, ' ');
        for w = 1:size(words, '*')
            if w > 1 then
                line_morse = line_morse + "/";  // Add slash between words
            end
            for i = 1:length(words(w))
                char= part(words(w), i);
                upperChar = convstr(char, 'u');
                if isfield(morseDict, upperChar) then
                    if i > 1 then
                        line_morse = line_morse + " ";  // Add space between characters
                    end
                    line_morse = line_morse + string(morseDict(upperChar));
                end
            end
        end
    endfunction
    
    // Process each line in the text array
    morse = [];
    for i = 1:size(text_array, 1)
        morse(i) = processLine(text_array(i));
    end
endfunction


function Extract_callback(handles)
    handles = gcf().userdata;
    set(handles.Generate, 'Enable', 'on');
    set(handles.ExtractedText, 'Enable', 'on');
    imgInput = handles.imgInput;
    img = imread(imgInput);

    // Check if the image is RGB
    if size(img,3) ~= 3 then
        img = img
    // If not, convert it to RGB
    if size(img,3) == 1 then
        img = repmat(img, [1, 1, 3]);
    else
        img = img(:,:,1:3);
    end
end


// PRE-PROCESSING 
if ndims(img) == 3 then
    gray = rgb2gray(img); // Convert input image to grayscale
end 

thresh = imgraythresh(gray); // Automatically determine the optimal threshold value for binarizing the grayscale image.
binary_img = im2bw (gray,thresh); // Convert the grayscale image into a binary image, where pixels are classified as either black (0) or white (1).
denoised_img = immedian(binary_img,3); //Remove salt and pepper noise

imwrite(denoised_img, "preprocessed_image.jpg"); // Save the preprocessed image



//TEXT EXTRACTION
command = "tesseract preprocessed_image.jpg stdout -l eng"; // Tesseract OCR command
output = unix_g(command); // Execute Tesseract OCR and capture the output
if isempty(output) then
   messagebox("Unable to extract text", "Error");
   return;
end 

    set(handles.ExtractedText, 'String', output);
    handles.output = output;
    gcf().userdata = handles;
endfunction


function Generate_callback(handles)
    handles = gcf().userdata;
    set(handles.PlaySound, 'Enable', 'on');
    set(handles.StopSound, 'Enable', 'on');
    set(handles.SaveSound, 'Enable', 'on');
    set(handles.MorseCode, 'Enable', 'on');
    
    output = matrix(get(handles.ExtractedText, 'String'), [-1, 1]);
    morseCode = textToMorse(output);
    morseCodeStr = strcat(morseCode, string(char(10))); 
    set(handles.MorseCode, 'String', morseCodeStr);
    handles.morseCode = morseCode;
    gcf().userdata = handles;
endfunction



function [output_signal, sample_rate] = morse_sound(morse_code)
    dot_duration = 0.1;
    dash_duration = 0.3;
    symbol_pause = 0.1;
    letter_pause = 0.3;
    word_pause = 0.7;
    
    freq = 800;  
    sample_rate = 8000;  
    
    output_signal = [];
    
    morse_code_str = msprintf("%s", morse_code);
    lines= strsplit(morse_code_str, char(10));
    
    for i = 1:size(lines, 1)
        line = lines(i);

        for j = 1:length(line)
            chr = part(line, j);
            
            select chr
            case '.'
                signal = generate_beep(freq, dot_duration, sample_rate);
                pause_samples = zeros(int(symbol_pause * sample_rate), 1);
            case '-'
                signal = generate_beep(freq, dash_duration, sample_rate);
                pause_samples = zeros(int(symbol_pause * sample_rate), 1);
            case '/'
                signal = [];
                pause_samples = zeros(int(word_pause * sample_rate), 1);
            case ' '
                signal = [];
                pause_samples = zeros(int(letter_pause * sample_rate), 1);
            else
                disp("Invalid character detected in Morse Code " + chr);
                continue;
            end

            output_signal = [output_signal; signal; pause_samples];
        end
    end
endfunction


function signal = generate_beep(freq, duration, sample_rate)
    t = linspace(0, duration, int(duration * sample_rate));
    signal = sin(2 * %pi * freq * t)';
endfunction


function PlaySound_callback(handles)
    handles = gcf().userdata;
    morse_code = handles.morseCode; 
    [signal, sample_rate] = morse_sound(morse_code);
    playsnd(signal, sample_rate);
    gcf().userdata = handles;
endfunction


function StopSound_callback(handles)
    playsnd([]);
endfunction


function SaveSound_callback(handles)
    handles = gcf().userdata;
    playsnd([]);
    morse_code = handles.morseCode;
    [signal, sample_rate] = morse_sound(morse_code);

    if ~isempty(signal)
        signal = signal / max(abs(signal));
    else
        disp("Error: No signal generated");
        return;
    end
    
    [filename, pathname] = uiputfile(["*.wav"], "Save Morse Code Audio As");
    
    if filename == "" then
        disp("Save operation cancelled by user");
        return;
    end
    
    full_filename = fullfile(pathname, filename);

    wavwrite(signal, sample_rate, 16, full_filename);
    
    disp("Sound saved to: " + full_filename);
    messagebox("Sound saved to: " + full_filename, "Saved", "info");
    gcf().userdata = handles;
endfunction


function Reset_callback(handles)
    handles = gcf().userdata;
    set(handles.Generate, 'Enable','off');
    set(handles.PlaySound, 'Enable', 'off');
    set(handles.StopSound, 'Enable', 'off');
    set(handles.SaveSound, 'Enable', 'off');
    set(handles.Reset, 'Enable', 'off');
    set(handles.InputImage, 'Enable', 'on');
    set(handles.Extract, 'Enable', 'off');
    set(handles.ExtractedText,'String','');
    set(handles.ExtractedText,'Enable','off');
    set(handles.MorseCode,'String','');
    set(handles.MorseCode,'Enable','off');
    clear morse_sound(morse_code);
    playsnd([]);

    children = get(handles.LoadImage, 'children');
    if length(children) > 0 then
        delete(children);
    end 
    gcf().userdata = handles;
endfunction


GUI();

