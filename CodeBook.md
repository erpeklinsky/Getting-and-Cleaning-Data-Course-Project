# Dataset Overview
The dataset was collected from an experiment that was carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities, which included walking, walking upstairs, walking downstairs, sitting, standing and laying while wearing a smartphone (Samsung Galaxy S II) on their waist. Using the embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The raw dataset was randomly partitioned into two sets, where 70% was designated as training data and 30% was the test data. 

#Data Cleaning
The tasks performed to cleaning the raw dataset was as follows:

1. Merged the training and the test sets to create one dataset. There    were 3 files for each set that had to be merged.Two additional files   (feature names and activity labels) were needed to appropriately       name/label the data.

2. Extracted only the measurements on the mean and standard deviation     for each measurement. Shown below as "Features".

3. Used descriptive activity names to name the activities in the data     set. Shown below in "Identifiers - Activity"

4. Appropriately labeled the data set with descriptive variable           names.
        Updated featured names:
            - t to time
            - Acc to Accelerometer
            - BodyBody to Body
            - f to frequency
            - Gyro to Gyroscope

5. Using the data set in step 4, created a second, independent tidy      dataset with the average of each variable for each activity and each   subject.

#Variables
Features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and tGyroscope-XYZ.
The clean dataset only includes the measurements on the mean and standard deviation for each measurement.

 [3] "timeBodyAccelerometer-mean()-X"              
 [4] "timeBodyAccelerometer-mean()-Y"              
 [5] "timeBodyAccelerometer-mean()-Z"              
 [6] "timeBodyAccelerometer-std()-X"               
 [7] "timeBodyAccelerometer-std()-Y"               
 [8] "timeBodyAccelerometer-std()-Z"               
 [9] "timeGravityAccelerometer-mean()-X"           
[10] "timeGravityAccelerometer-mean()-Y"           
[11] "timeGravityAccelerometer-mean()-Z"           
[12] "timeGravityAccelerometer-std()-X"            
[13] "timeGravityAccelerometer-std()-Y"            
[14] "timeGravityAccelerometer-std()-Z"            
[15] "timeBodyAccelerometerJerk-mean()-X"          
[16] "timeBodyAccelerometerJerk-mean()-Y"          
[17] "timeBodyAccelerometerJerk-mean()-Z"          
[18] "timeBodyAccelerometerJerk-std()-X"           
[19] "timeBodyAccelerometerJerk-std()-Y"           
[20] "timeBodyAccelerometerJerk-std()-Z"           
[21] "timeBodyGyroscope-mean()-X"                  
[22] "timeBodyGyroscope-mean()-Y"                  
[23] "timeBodyGyroscope-mean()-Z"                  
[24] "timeBodyGyroscope-std()-X"                   
[25] "timeBodyGyroscope-std()-Y"                   
[26] "timeBodyGyroscope-std()-Z"                   
[27] "timeBodyGyroscopeJerk-mean()-X"              
[28] "timeBodyGyroscopeJerk-mean()-Y"              
[29] "timeBodyGyroscopeJerk-mean()-Z"              
[30] "timeBodyGyroscopeJerk-std()-X"               
[31] "timeBodyGyroscopeJerk-std()-Y"               
[32] "timeBodyGyroscopeJerk-std()-Z"               
[33] "timeBodyAccelerometerMag-mean()"             
[34] "timeBodyAccelerometerMag-std()"              
[35] "timeGravityAccelerometerMag-mean()"          
[36] "timeGravityAccelerometerMag-std()"           
[37] "timeBodyAccelerometerJerkMag-mean()"         
[38] "timeBodyAccelerometerJerkMag-std()"          
[39] "timeBodyGyroscopeMag-mean()"                 
[40] "timeBodyGyroscopeMag-std()"                  
[41] "timeBodyGyroscopeJerkMag-mean()"             
[42] "timeBodyGyroscopeJerkMag-std()"              
[43] "FrequencyBodyAccelerometer-mean()-X"         
[44] "FrequencyBodyAccelerometer-mean()-Y"         
[45] "FrequencyBodyAccelerometer-mean()-Z"         
[46] "FrequencyBodyAccelerometer-std()-X"          
[47] "FrequencyBodyAccelerometer-std()-Y"          
[48] "FrequencyBodyAccelerometer-std()-Z"          
[49] "FrequencyBodyAccelerometer-meanFreq()-X"     
[50] "FrequencyBodyAccelerometer-meanFreq()-Y"     
[51] "FrequencyBodyAccelerometer-meanFreq()-Z"     
[52] "FrequencyBodyAccelerometerJerk-mean()-X"     
[53] "FrequencyBodyAccelerometerJerk-mean()-Y"     
[54] "FrequencyBodyAccelerometerJerk-mean()-Z"     
[55] "FrequencyBodyAccelerometerJerk-std()-X"      
[56] "FrequencyBodyAccelerometerJerk-std()-Y"      
[57] "FrequencyBodyAccelerometerJerk-std()-Z"      
[58] "FrequencyBodyAccelerometerJerk-meanFreq()-X" 
[59] "FrequencyBodyAccelerometerJerk-meanFreq()-Y" 
[60] "FrequencyBodyAccelerometerJerk-meanFreq()-Z" 
[61] "FrequencyBodyGyroscope-mean()-X"             
[62] "FrequencyBodyGyroscope-mean()-Y"             
[63] "FrequencyBodyGyroscope-mean()-Z"             
[64] "FrequencyBodyGyroscope-std()-X"              
[65] "FrequencyBodyGyroscope-std()-Y"              
[66] "FrequencyBodyGyroscope-std()-Z"              
[67] "FrequencyBodyGyroscope-meanFreq()-X"         
[68] "FrequencyBodyGyroscope-meanFreq()-Y"         
[69] "FrequencyBodyGyroscope-meanFreq()-Z"         
[70] "FrequencyBodyAccelerometerMag-mean()"        
[71] "FrequencyBodyAccelerometerMag-std()"         
[72] "FrequencyBodyAccelerometerMag-meanFreq()"    
[73] "FrequencyBodyAccelerometerJerkMag-mean()"    
[74] "FrequencyBodyAccelerometerJerkMag-std()"     
[75] "FrequencyBodyAccelerometerJerkMag-meanFreq()"
[76] "FrequencyBodyGyroscopeMag-mean()"            
[77] "FrequencyBodyGyroscopeMag-std()"             
[78] "FrequencyBodyGyroscopeMag-meanFreq()"        
[79] "FrequencyBodyGyroscopeJerkMag-mean()"        
[80] "FrequencyBodyGyroscopeJerkMag-std()"         
[81] "FrequencyBodyGyroscopeJerkMag-meanFreq()"  

Identifiers:
[1] Subject - The ID of the patient who completed the experiment
[2] Activity - The six activities performed by the pations: walking,                 walking upstairs, walking downstairs, sitting, standing                and laying

