


# 1. Martinez-Trujillo Monkey Lab LFP Pipeline

This is the formal documentation for the signal processing of raw data from the intracranial electrode EEG recordings from the monkey lab (Martinez-Trujillo). 

### Installation and Basic Setup 

<ol> 
  <li> Clone this GitHub repository, or download the folder in the code section entitled 'Martinez-Trujillo'. Make sure you have MATLAB (2019+) downloaded on your computer. </li>
  
  <li> Open the file process_wm1_rawdata.m in the MATLAB workspace, and set your pathway directory to the 'Martinez-Trujillo' folder you just downloaded. This software requires the Neural Processing MATLAB Toolkit (NPMK), and also the Signal Processing Toolkit. Make sure you have both downloaded. Instructions for downloading Add-Ons in MATLAB can be found <a href="https://www.mathworks.com/help/matlab/matlab_env/get-add-ons.html">here</a>.  </li>
  
</ol>

### Usage 

   <p>  Hopefully, you have opened the file "process_wm1_rawdata.m" in MATLAB. Before you run this file, you must ensure that your raw data files from the       Martinez-Trujillo Lab are stored in the correct folders, which we will show you how to do below. The file "process_wm1_rawdata.m" will prompt you to enter the following inputs:  </p>
     
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
      </ul>
  <br/>
  <li>   The following is a diagram of the structure of this code. We have provided a simple example of a set of Martinez-Trujillo data filenames to be loaded. For this example,  </li>
          <br/>
  <ul>
        <li>
          Session Recording Date = 1127
        </li>
          <li>
          Task Number = 1
        </li>
         <li>
          Subject Name = 'Buzz'
        </li>
      </ul>
  <br/>


<img src="https://i.ibb.co/XCYNnfF/Martinez-Trujillo-18-x-19-in-18-x-15-in-2.png"><img/>


<li> 
    
<p> Look at the filenames in the blue circles. You should place your analagous files for your own dataset in the folder above each blue circle. Your raw files should consist of: </p>
  
<ul> 
  <li> <strong>One file containing 'behavioural data'</strong> consisting of information such as the trial_ID, stop, and start times for the cognitive tasks in the experiment. For our example data, this file is named 'Buzz_20171127_KeyMapWM.mat'. You should name it appropriately for your subject name, recording year and recording date. Look at the smallest blue circle above for where to place this file.
  </li>
  <li> <strong>Eight files of raw data </strong>, 4 for the dorsal electrode array (nsp1 files are dorsal), and 4 for the ventral electrode array (nsp0 files are ventral). These filenames should be named and placed together appropriately following the example filenames in the largest blue circle above. </li>
  <li><strong>Two files of metadata </strong>, one for the dorsal electrode array, and one for the ventral electrode array. For our example data, these files are named "BuzzDorsalArrayData.mat" and "BuzzVentralArrayData.mat", respectively. You should name yours appropriately for your subject name. Look at the medium blue circle above for where to place this file. </li>
  
</ul>
  
<p>Once you have placed the appropriate files in the designated folders (above the blue circles), you can run the code "process_wm1_rawdata.m". It may take a while to run, as the code is iterating over all 100 electrodes in a given array. <strong> Note, when you are prompted to enter the subject name into the MATLAB command line, you need to use quotations around the name (e.g 'Buzz'), otherwise MATLAB will not read the variable as a string. </strong> Run the code now by clicking on the green arrow shown below in your MATLAB window.</p>

</li>
  
  <img src="https://i.ibb.co/yYw1Y7M/Screen-Shot-2021-11-11-at-8-30-51-PM.png"></img>
  
<li>
  
 Success! Your .mat files containing the loaded LFP data are in the 'output' folder specified above. The inside of the output folder should look like this, with a .mat file for each trial:

</li>
  
  <img src = "https://i.ibb.co/ykC3Qsv/Screen-Shot-2021-11-11-at-8-05-48-PM.png"> </img>
  
 <li>
  Now, open the file loadtest.m in the 'input' folder in order to load and understand the output .mat file structure. Make sure your current directory is the folder 'Martinez-Trujillo'. Run "loadtest.m", if MATLAB pops up a modal window that suggests you to add path, click add path. Once the code starts running, it will prompt you to enter the trial number of the .mat file you want to load, enter 100 just to test this out (or whatever trial you want to load). 
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

  <li>
 Now, you have loaded and understood the processed Monkey Lab data--so that you can use it for your own research and connect it with other computational tools in the Muller Lab, etc. Cheers!
  </li>


  </ol>
  
  <br/>

### Credits

<ul>
  <li> Maryam Mofrad - author of code </li>
   <li>  Lyle Muller - principal investigator </li> 
   <li> Jamie Graham - editor, documentation, and organization </li> 
</ul>
