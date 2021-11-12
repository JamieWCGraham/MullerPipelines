%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                     %
% This is the code for processing the 
% raw data files for the clinical EEG 
% epilepsy data.
%         
% Jamie Graham + Maryam Mofrad + Lyle % 
% Muller         
% 11 Nov 2021
% Documentation by Jamie Graham
%                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Input subject number, session number, and run number: 

subject = input("Enter subject number: ");
session = input("Enter session number: ");
run = input("Enter run number: ");

% Here we set pathways for our raw data.

pathname = './clinical_iEEG/raw/'; % initializing pathname
matfiles = dir(fullfile(pathname,'*.mat'));  % load all .mat files (raw data) info into a struct
matfiles_cell = struct2cell(matfiles);  % turn that struct into a cell
eeg = struct(); % initialize empty struct to contain eeg data
annotation = load(sprintf('./clinical_iEEG/ann/ann_sub-0%d_ses-00%d_run0%d_ieeg.mat',subject,session,run)); % load annotation data 

st = 1:length(matfiles);    % further initialization of eeg struct
for ii = 1:length(matfiles) % iteratively populate the eeg struct with eeg data 
  temp_path = sprintf('./clinical_iEEG/raw/%s',matfiles_cell{1,ii});
  eeg(ii).st = load(temp_path);
end

% Set g and h to choose which plot to render

disp("Plotting Data, please enter g and h")

g = input("electrode number g (1 or 2): ");
h = input("hour of the day h (1-24): ");

% This block of code conditionally stores a variable eeg_index depending on the values of g and h 
% so that we can properly index the eeg struct to get the plot we want

eeg_index = 0;
if g == 1
    eeg_index = h;
elseif g == 2
    eeg_index = length(eeg)/2 + h;
else
end

% Plotting the EEG Waveform of your choice based on the eeg_index we stored
% above.

eegdata = eeg(eeg_index).st.x;
x = uint32(1):uint32(length(eegdata));
plot(x,eegdata);



