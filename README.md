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

<p>Suppose we enter g = 1, h = 10, corresponding to electrode 1's recording from 9am to 10am. The output of the code should render the waveform of the raw eeg file, it will look something like this:</p>

<br/>

<img src="https://i.ibb.co/yNyv9pn/Screen-Shot-2021-11-12-at-12-15-16-PM.png"></img>

<br/>

<p><strong>Success! You've successfully loaded all the .mat files for this particular subject, session, and run. In the MATLAB workspace, the variable 'eeg' should be a 1x48 struct, corresponding to 24 hours of raw recordings for both electrode 1 and 2. </strong></p>


### Credits

<ul>
  <li> Jamie Graham - author of code, editor, documentation, and organization </li>
   <li>  Lyle Muller - principal investigator </li> 
   <li> Maryam Mofrad - editor, author </li> 
</ul>

