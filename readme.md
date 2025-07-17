# Comparing Crop Types in Different Regions of Germany Using High Resolution Remote Sensing Imagery and Random Forest Classification

:mortar_board: Analysis of High Resolution Remote Sensing Imagery  
:floppy_disk: Additional Data, such as TIFF files, are available [here](https://uni-muenster.sciebo.de/s/mKADGoJgLWD2fpi)  
:computer: No-Code approach. No programming needed

## Objectives

The objective of this study is to classify the crops in the selected area of interest by using Random Forest and Texture Analysis. The results are then compared with different regions to evaluate the variety in crop types.

## Methodology

We used Digital Ortophotos from OpenData NRW with a 10cm resolution. Additionally, we extracted the texture features from those images.
With the RGB and texture features, a Random Forest Classifier was trained.
All actions were carried out with standard QGIS and Orfeo Toolbox (OTB) tools.
As a case study to proof the concept, small areas in two different municipalities (Laer (Münster), Wickede (Arnsberg/ Soest)) were chosen.
Those cities are located in areas with historically known differences in the usual crop types.

## Classification

* 0 - Bare Soil
* 1 - Grassland
* 2 - Corn
* 3 - Cereal
* 4 - Potatoes
* 5 - Woods

## Results

The Random Forest successfully predicted crop types across the municipalities.  
Laer shows dominant corn cultivation (1159 ha) and bare soil (1567 ha), while Wickede is characterized by extensive potato farming (1423 ha) and higher grassland coverage (767 ha), demonstrating clear regional agricultural differences.  
But it needs to be said that the results are not perfect and future improvements are needed.  
<img src="https://github.com/tlehman1/AOHRSI_CropDetechtion/blob/main/poster/graphs/textureAndColour2x2laer.png" style="width: 300px;"/>
<img src="https://github.com/tlehman1/AOHRSI_CropDetechtion/blob/main/poster/graphs/textureAndColour2x2wickede.png" style="width: 300px;"/>

<img width="1467" height="2072" alt="image" src="https://github.com/user-attachments/assets/60b6d9a3-0a94-4031-ae12-19a1caeb9175" />

