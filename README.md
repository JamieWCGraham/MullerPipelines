# EEG/LFP Muller Pipelines

This is the formal documentation for the signal processing of various sources of raw EEG,LFP data in the Muller Lab. We have two pipelines, one for the Martinez-Trujillo Monkey Lab data, and one for the Clinical Recordings Epilepsy EEG data. The objective is to be able to take a series of raw data files from either of the pipelines (.ccf, .nev, .ns2, .ns6, etc), and systematically provide a roadmap to processing and loading these files into your MATLAB workspace, so that you can visualize and work with the data for your own project.


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

<ol> 
    <li> Hopefully, you have opened the file "process_wm1_rawdata.m" in MATLAB. Before you run this file, you must ensure that your raw data files from the       Martinez-Trujillo Lab are stored in the correct folders. The file "process_wm1_rawdata.m" will prompt you to enter the following inputs:  
  
        <ul>
        <li>
          Session Recording Date:
        </li>
          <li>
          Task Number: 
        </li>
         <li>
          Subject Name:
        </li>
          <li>
          Dorsal or Ventral Array (enter D or V):
        </li>
      </ul>
      
  </li>
 
         <li>   The following is a diagram of the structure of this code. In order for the loading to run successfully, please place the appropriate files in each folder as designated below. We have provided a simple example of a set of Martinez-Trujillo data filenames to be loaded.  </li>
</ol>

<img src="https://i.ibb.co/BnSX18N/Martinez-Trujillo.jpg" />


### Credits



## 2. Clinical Recordings EEG Pipeline

This is the formal documentation for the signal processing of the intracranial EEG recording during hospitalization of epileptic patient.

### Installation and Basic Setup 

### Usage 

### Credits

