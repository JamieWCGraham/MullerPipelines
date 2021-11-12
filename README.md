# EEG/LFP Muller Pipelines

This is the formal documentation for the signal processing of various sources of raw EEG & LFP data in the Muller Lab. We have two pipelines, one for the Martinez-Trujillo Monkey Lab data, and one for the Clinical Recordings Epilepsy EEG data. The objective is to be able to take a series of raw data files from either of the pipelines (.ccf, .nev, .ns2, .ns6, etc), and systematically provide a roadmap to processing and loading these files into your MATLAB workspace, so that you can visualize and work with the data for your own project.


# Table of Contents

<ol> 
  <li> <h4> Martinez-Trujillo Monkey Lab LFP Pipeline </h4> </li>
  <ul> 
    <li>Installation and Basic Setup</li>
    <li> Usage </li>
    <li> Credits </li>
  </ul>
<li> <h4>  Clinical Recordings EEG Pipeline   </h4> </li>
    <ul> 
    <li>Installation and Basic Setup</li>
    <li> Usage </li>
    <li> Credits </li>
  </ul>
</ol> 


## 1. Martinez-Trujillo Monkey Lab LFP Pipeline

This is the formal documentation for the signal processing of raw data from the intracranial electrode EEG recordings from the monkey lab (Martinez-Trujillo). 

### Installation and Basic Setup 

<ol> 
  <li> Clone this GitHub repository, or download the folder in the code section entitled 'Martinez-Trujillo'. Make sure you have MATLAB (2019+) downloaded on your computer. </li>
  
  <li> Open the file process_wm1_rawdata.m in the MATLAB workspace, and set your pathway directory to the 'Martinez-Trujillo' folder you just downloaded. This software requires the Neural Processing MATLAB Toolkit (NPMK), and also the Signal Processing Toolkit. Make sure you have both downloaded. Instructions for downloading Add-Ons in MATLAB can be found <a href="https://www.mathworks.com/help/matlab/matlab_env/get-add-ons.html">here</a>.  </li>
  
</ol>

### Usage 

   <p>  Hopefully, you have opened the file "process_wm1_rawdata.m" in MATLAB. Before you run this file, you must ensure that your raw data files from the       Martinez-Trujillo Lab are stored in the correct folders. The file "process_wm1_rawdata.m" will prompt you to enter the following inputs:  </p>
     
<ol> 
        <br/>
  <ul>
        <li>
          Session Recording Date (month,date)
        </li>
          <li>
          Task Number (1,2, or 3)
        </li>
         <li>
          Subject Name ('String')
        </li>
          <li>
          Dorsal or Ventral Array (enter 1 or 0, respectively)
        </li>
      </ul>
  <br/>
  <li>   The following is a diagram of the structure of this code. In order for the loading to run successfully, please place the appropriate files in each folder as designated below in the blue circles. We have provided a simple example of a set of Martinez-Trujillo data filenames to be loaded. For this example,  </li>
          <br/>
  <ul>
        <li>
          Session Recording Date = 1127
        </li>
          <li>
          Task Number = 1
        </li>
         <li>
          Subject Name = Buzz
        </li>
          <li>
          Dorsal or Ventral Array (enter 1 or 0, respectively) = 1
        </li>
      </ul>
  <br/>


<img src="https://i.ibb.co/y6C3nJ1/Martinez-Trujillo-18-x-19-in-18-x-15-in.jpg"><img/>


<li> 
    
Look at the filenames in the blue circles. You should place your analagous files for your own dataset in the folder above each blue circle. Once you have placed the appropriate files in the designated folders above the blue circles, you can run the code "process_wm1_rawdata.m". It may take a while to run, as the code is iterating over all 100 electrodes in a given array.

</li>
  
  <img src="https://i.ibb.co/yYw1Y7M/Screen-Shot-2021-11-11-at-8-30-51-PM.png"></img>
  
<li>
  
 Success! Your .mat files containing the loaded LFP data are in the 'output' folder specified above. The inside of the output folder should look like this, with a .mat file for each trial:

</li>
  
  <img src = "https://i.ibb.co/ykC3Qsv/Screen-Shot-2021-11-11-at-8-05-48-PM.png"> </img>
  
 <li>
  Now, open the file loadtest.m in the 'input' folder in order to load and understand the output .mat file structure. Run "loadtest.m", it will ask for the trial number of the .mat file you want to load, enter 100 just to test this out (or whatever trial you want to load). 
  </li>

 <li>
  Click on the 'lfp' variable in the MATLAB workspace, then double click on the 'data' struct in the middle pane.
  </li>
  
  <img src="https://i.ibb.co/FqjsVP3/Screen-Shot-2021-11-11-at-8-14-03-PM.png"></img>
  
   <li>
  Here, we have three fields: spike, lfp, and metadata. 'spike' contains all the spike data for each of the 100 electrodes for this trial. 'lfp' contains all the raw lfp data for all 100 electrodes in this trial. 'metadata' contains the metadata for this trial. Double-click on 'spike'
  </li>
  
  <img src="https://i.ibb.co/NnwsfK1/Screen-Shot-2021-11-11-at-8-17-45-PM.png"></img>
  
   <li>
  This is an array of 100 structs, corresponding to the physical array of 100 electrodes. Double-click on the (1,1) element in this array, this corresponds to information about one of the 100 electrodes in this trial.
  </li>
  
  
  <img src="https://i.ibb.co/T8hNKjW/Screen-Shot-2021-11-11-at-8-17-51-PM.png"></img>
  
  <li>
  Here, we have three fields: Timestamp, Unit, and Waveform. 'Timestamp' contains all the timestamps for all the LFP spikes from this electrode in this trial. Each electrode has a set of associated neurons around it that contribute to the electrode signal. 'Unit' contains information about which neuron generates each spike for a given electrode (e.g neuron 1,2,3 etc for this electrode). 'Waveform' contains raw lfp data for 100 datapoints around all the spikes from this electrode.
  </li>
  
  <img src="https://i.ibb.co/RvGvpX2/Screen-Shot-2021-11-11-at-8-17-56-PM.png"></img>

  </ol>
  
  <br/>

### Credits

<ul>
  <li> Maryam Mofrad - author of code </li>
   <li>  Lyle Muller - principal investigator </li> 
   <li> Jamie Graham - editor, documentation, and organization </li> 
</ul>


## 2. Clinical Recordings EEG Pipeline

This is the formal documentation for the signal processing of the intracranial EEG recording during hospitalization of epileptic patient.

### Installation and Basic Setup 

<p> Make sure that you have MATLAB installed and your raw .mat files ready to be processed. </p>

### Usage 

<p>  Open the file "process_raw_clinical.m" in MATLAB. Before you run this file, you must ensure that your raw data files from the clinical recordings are stored in the correct folders. The file "process_raw_clinical.m" will prompt you to enter the following inputs:  </p>
     
<ol> 
 <br/>
  <ul>
        <li>
          Subject Number (integer)
        </li>
          <li>
          Session Number (integer)
        </li>
         <li>
          Run Number (integer)
        </li>
   </ul>
 <br/>
  <li>   The following is a diagram of the structure of this code. In order for the loading to run successfully, please place the appropriate files in each folder as designated below in the blue circles. We have provided a simple example of a set of clinical data filenames to be loaded. For this example,  </li>
<br/>
  <ul>
        <li>
          Subject Number (integer) = 24
        </li>
          <li>
          Session Number (integer) = 1
        </li>
         <li>
          Run Number (integer) = 1
        </li>
   </ul>
 <br/>

<img src="https://i.ibb.co/mFW0hGX/Martinez-Trujillo-18-x-19-in-18-x-15-in-1.png"></img>

<p>Then, for visualization of raw EEG data from a specific electrode and a specific hour of the recording, the code will prompt you to enter</p>

<ul>
        <li>
          Electrode Number g (1 or 2)
        </li>
        <li>
          Hour (1 - 24)
        </li>
</ul>

<p>Suppose we enter g = 1, h = 10, corresponding to electrode 1's recording from 9am to 10am. The output of the code should render</p>

<img src="https://i.ibb.co/yNyv9pn/Screen-Shot-2021-11-12-at-12-15-16-PM.png"></img>

<p>Success! You've successfully loaded all the .mat files for this particular subject, session, and run. In the MATLAB workspace, the variable 'eeg' should be a 1x48 struct, corresponding to 24 hours of raw recordings for both electrode 1 and 2. </p>


### Credits

<ul>
  <li> Jamie Graham - author of code, editor, documentation, and organization </li>
   <li>  Lyle Muller - principal investigator </li> 
   <li> Maryam Mofrad - editor, author </li> 
</ul>

