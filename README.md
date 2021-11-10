# EEG/LFP Muller Pipelines

This is the formal documentation for the signal processing of various sources of raw EEG,LFP data in the Muller Lab. We have two pipelines, one for the Martinez-Trujillo Monkey Lab data, and one for the Clinical Recordings Epilepsy EEG data. The objective is to be able to take a series of raw data files from either of the pipelines (.ccf, .nev, .ns2, .ns6, etc), and systematically provide a roadmap to processing and loading these files into your MATLAB workspace, so that you can visualize and work with the data for your own project.


# Table of Contents

<ol> 
<li> Martinez-Trujillo Monkey Lab LFP Pipeline </li>

<li>  Clinical Recordings EEG Pipeline</li>
</ol> 


## Martinez-Trujillo Monkey Lab LFP Pipeline

This is the formal documentation for the signal processing of raw data from the intracranial electrode EEG recordings from the monkey lab (Martinez-Trujillo). 

### Installation and Basic Setup 

<ol> 
  <li> Clone this GitHub repository, or download the folder entitled 'Martinez-Trujillo'. Make sure you have MATLAB (2019+) downloaded on your computer. </li>

  <li> Open the file process_wm1_rawdata.m in the MATLAB workspace, and set your pathway directory to the 'Martinez-Trujillo' folder you just downloaded. This software requires the Neural Processing MATLAB Toolkit (NPMK). Luckily, we have included it in the sub-folder 'NPMK' -- so no additional downloads are necessary. </li>
</ol>


### Usage 

<ol> 
  <li>Follow the block of text 'INSTRUCTIONS' at the top of the file process_wm1_rawdata.m</li>

  <li> Open the file process_wm1_rawdata.m in the MATLAB workspace, and set your pathway directory to the 'Martinez-Trujillo' folder you just downloaded. This software requires the Neural Processing MATLAB Toolkit (NPMK). Luckily, we have included it in the sub-folder 'NPMK' -- so no additional downloads are necessary. </li>
</ol>




## Clinical Recordings EEG Pipeline

This is the formal documentation for the signal processing of the intracranial EEG recording during hospitalization of epileptic patient.

