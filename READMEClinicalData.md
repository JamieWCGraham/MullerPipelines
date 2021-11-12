


# 2. Clinical Recordings EEG Pipeline

This is the formal documentation for the signal processing of the intracranial EEG recording during hospitalization of epileptic patient.

### Installation and Basic Setup 

<p> Make sure that you have MATLAB installed and your raw .mat files ready to be processed. </p>

### Usage 

<p>  Open the file "process_raw_clinical.m" in MATLAB. Before you run this file, you must ensure that your raw data files from the clinical recordings are stored in the correct folders, which we will show you how to do below. The file "process_raw_clinical.m" will prompt you to enter the following inputs:  </p>
     
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

<p> Look at the filenames in the blue circles. You should place your analagous files for your own dataset in the folder above each blue circle. Your raw files should consist of: </p>
  
<ul> 
  <li> <strong>One file containing 'annotation data'</strong>. For our example data, this file is named 'ann_sub-024_ses-001_run01_ieeg.mat'. You should name it appropriately for your subject number, session number and run number. Look at the smallest blue circle above for where to place this file.
  </li>
  <li> <strong>48 files of raw data </strong>, 24 for the 24 hours of recording from the first electrode (g1), and 24 for the 24 hours of recording from the second electrode (g2). These filenames should be named and placed together appropriately following the example filenames in the largest blue circle above. </li>
  
<p> Once you have placed your files in the appropriate folders, you can run the code "process_raw_clinical.m". Follow the instructions in the MATLAB command line for entering inputs related to the prompts it gives you. 

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
