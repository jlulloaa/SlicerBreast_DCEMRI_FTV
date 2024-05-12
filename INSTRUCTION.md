# Usage
- If certain functions do not work -- have a look at the devcontainer to see what needs to be installed. 

## Installation 
Install 3D Slicer 5.6.0 locally on your machine and then copy the following files to the `%SLICER_DIRECTORY%` path. 
```
cp DCE_IDandPhaseSelect/DCE_IDandPhaseSelect.py ~%SLICER_DIRECTORY%/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/DCE_IDandPhaseSelect.py 
cp DCE_TumorMapProcess/DCE_TumorMapProcess.py ~%SLICER_DIRECTORY%/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/DCE_TumorMapProcess.py 
cp DCE_TumorMapProcess/Breast_DCEMRI_FTV_plugins2/ftv_map_gen.py ~%SLICER_DIRECTORY%/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/Breast_DCEMRI_FTV_plugins2/ftv_map_gen.py
cp DCE_TumorMapProcess/Breast_DCEMRI_FTV_plugins2/read_DCE_images_to_numpy.py ~%SLICER_DIRECTORY%/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/Breast_DCEMRI_FTV_plugins2/read_DCE_images_to_numpy.py 
cp DCE_IDandPhaseSelect/Breast_DCEMRI_FTV_plugins1/Exam_Ident_and_timing.py ~%SLICER_DIRECTORY%/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/Breast_DCEMRI_FTV_plugins1/Exam_Ident_and_timing.py
```

## DICOM Folder Setuo
- If you have a patent that you need to analyse, they can either be in two states: 
    - All the phases are in a single folder i.e all .dicom files are in a single folder ; in that case rename the folder to `800`  
    - Phases are separated in different folders; in that case rename the folders as `800`,`801`,`802`,`803`,`804`,`805` 

```
/Patent_001
  /80x
    /2.16.840.1.114362.1.12081536.24564705482.660646099.1097.7262.dcm
    /2.16.840.1.114362.1.12081536.24564705482.660646099.1097.7263.dcm
    /2.16.840.1.114362.1.12081536.24564705482.660646099.1097.7264.dcm
    /2.16.840.1.114362.1.12081536.24564705482.660646099.1097.7265.dcm
    /2.16.840.1.114362.1.12081536.24564705482.660646099.1097.7266.dcm
    /2.16.840.1.114362.1.12081536.24564705482.660646099.1097.7267.dcm
    ....
```

## FTV Analysis 
- **Please note when you select the folder -- do not select folder `80x` directly rather select the folder above  i.e `Patent_001`** 
- Follow the PDF `StepByStepInstructionsForSlicerFTV_12_14_2022_FINAL_Rdcd.pdf` 
