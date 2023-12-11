# find . -name "*.dcm" -exec echo {} \; -exec dicom-decompress --transcode {} {} \;
cp DCE_IDandPhaseSelect/DCE_IDandPhaseSelect.py ~/tmp/Slicer-5.6.0-linux-amd64/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/DCE_IDandPhaseSelect.py 
cp DCE_TumorMapProcess/DCE_TumorMapProcess.py ~/tmp/Slicer-5.6.0-linux-amd64/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/DCE_TumorMapProcess.py 
cp DCE_TumorMapProcess/Breast_DCEMRI_FTV_plugins2/ftv_map_gen.py ~/tmp/Slicer-5.6.0-linux-amd64/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/Breast_DCEMRI_FTV_plugins2/ftv_map_gen.py
cp DCE_TumorMapProcess/Breast_DCEMRI_FTV_plugins2/read_DCE_images_to_numpy.py ~/tmp/Slicer-5.6.0-linux-amd64/slicer.org/Extensions-32390/Breast_DCEMRI_FTV/lib/Slicer-5.6/qt-scripted-modules/Breast_DCEMRI_FTV_plugins2/read_DCE_images_to_numpy.py 

Slicer