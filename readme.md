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

* 0 - Empty Field
* 1 - Grassland
* 2 - Corn
* 3 - Cereal
* 4 - Potatoes
* 5 - Woods

## Results
