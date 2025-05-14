
# 🫁 Lung Nodule Detection using CT Scans in MATLAB

A MATLAB-based GUI tool for **detecting lung nodules** in CT scan images using classical image processing techniques. This project serves as a diagnostic aid for early detection of lung cancer by identifying and classifying nodules based on size, with visual output and risk assessment to support medical professionals.

---

## 📌 Project Details

- **Title**: Lung Nodule Detection using CT Scans in MATLAB  
- **Platform**: MATLAB R2020a+ (Image Processing Toolbox required)  
- **Developers**: Urmit Kikani (22BEC137), Vartika Gangal (22BEC138)  
- **Institution**: Nirma University  
- **Guide**: Prof. Ruchi Gajjar  

---

## 🌟 Key Features

- 🖥️ **GUI-Based Interface**: Simple, interactive, and user-friendly interface.
- 🔍 **Nodule Detection**: Classifies nodules as:
  - Small (<2mm)
  - Medium (2–8mm)
  - Large (>8mm)
- 🛠️ **Processing Pipeline**:
  - Grayscale conversion
  - Contrast enhancement (`imadjust`)
  - Noise reduction using median filtering (`medfilt2`)
  - Edge detection with Canny method
  - Image binarization via Otsu’s method (`graythresh`, `imbinarize`)
  - Morphological operations (`imopen`, `strel`)
- 🧠 **Risk Assessment**: Estimates cancer risk based on nodule size and pixel area.
- 🖼️ **Output Visualization**:
  - Displays original CT image with bounding boxes.
  - Shows intermediate stages: enhanced, filtered, edge-detected, and segmented images.

---

## 🧪 Processing Workflow

1. **Image Acquisition**: Load CT scan image from disk.
2. **Preprocessing**: Convert to grayscale and enhance contrast.
3. **Noise Filtering**: Remove image artifacts using a median filter.
4. **Edge Detection**: Identify region boundaries using the Canny algorithm.
5. **Segmentation**: Apply Otsu’s thresholding to extract nodules.
6. **Morphological Refinement**: Clean binary image with opening operations.
7. **Detection & Annotation**:
   - Use `bwlabel`, `regionprops` to locate nodules.
   - Draw bounding boxes on the original image.
8. **Risk Analysis**: Classify nodules and estimate risk based on their area.

---

## 📈 Risk Assessment Criteria

| Nodule Size     | Area (Pixels) | Estimated Cancer Risk |
|------------------|----------------|-------------------------|
| Small (<2mm)     | 20–50           | < 1%                    |
| Medium (2–8mm)   | 50–200          | 1–2%                    |
| Large (>8mm)     | >200            | 9–10%                   |

---

## 🖼️ GUI Overview

- **Browse**: Select input CT scan image.
- **Stage Visualization**: Check intermediate outputs (Enhanced, Filtered, Edges, Binary).
- **Detection Buttons**: Click to detect nodules of selected size category.
- **Output Display**: View annotated image with bounding boxes and risk levels.

---

## 🏁 How to Run

1. Open **MATLAB** (version R2020a or newer).
2. Navigate to the `CODE` folder.
3. Run the GUI script:
   ```matlab
   lungNoduleDetectionGUI
   ```
4. Use the GUI to load images and perform detection.

---

## ✅ Outputs

- Annotated CT images with bounding boxes for detected nodules.
- Intermediate image stages for transparency and analysis.
- Risk level estimation per detected region.

Example (MATLAB code snippet):
```matlab
imshow(img); % Display original image
rectangle('Position', bbox, 'EdgeColor', 'r', 'LineWidth', 2); % Annotate detected nodule
```

---

## 📂 File Structure

```
Lung Nodule Detection
├── CODE
│   ├── lungNoduleDetectionGUI.m       % Main GUI script
│   └── processingFunctions.m          % Helper processing functions
├── Report
│   └── IPassigment_Lungnoduledetection.pdf
├── Sample_Images
│   ├── image1.jpg
│   ├── image2.jpg
│   └── ...
└── README.md
```

---

## 🚀 Future Enhancements

- Support for **3D CT scans** and volumetric analysis.
- Integrate **machine learning** for intelligent classification.
- Develop as a **standalone desktop application** for clinics.

---

## 📄 References

1. MATLAB Documentation – *Image Processing Toolbox*  
2. Research Literature – *Lung Nodule Detection in CT Scans via Image Processing*

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙏 Acknowledgments

- **Urmit Kikani** – [22bec137@nirmauni.ac.in](mailto:22bec137@nirmauni.ac.in)  
- **Vartika Gangal** – [22bec138@nirmauni.ac.in](mailto:22bec138@nirmauni.ac.in)  
- **Prof. Ruchi Gajjar** – [ruchi.gajjar@nirmauni.ac.in](mailto:ruchi.gajjar@nirmauni.ac.in)

---

Thank you for using **Lung Nodule Detection in MATLAB** – contributing to better and earlier diagnosis of lung cancer. 🫁🚀
