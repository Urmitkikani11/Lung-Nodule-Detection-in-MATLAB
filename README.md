# 🫁 Lung Nodule Detection using CT Scans in MATLAB

A MATLAB-based GUI tool for detecting **lung nodules** in CT scan images using image processing techniques such as contrast enhancement, noise reduction, edge detection, and segmentation. This diagnostic aid helps clinicians detect possible cancerous regions early with improved accuracy and reduced false positives.

---

## 🌟 Features

- **GUI-Based Interface**: Simple and intuitive user interaction
- **Multiple Detection Modes**: Classify nodules as small (<2mm), medium (2–8mm), or large (>8mm)
- **CT Scan Image Processing**:
  - Grayscale conversion
  - Contrast enhancement
  - Median filter noise reduction
  - Canny edge detection
  - Otsu's thresholding for segmentation
  - Morphological operations for refinement
- **Bounding Box Visualization**: Highlights detected nodules on the original CT image
- **Risk Assessment**: Displays estimated cancer risk level based on nodule size
- **Output Gallery**: View step-by-step output stages including enhanced, filtered, edge-detected, and segmented images

---

## 🔧 Requirements

- MATLAB R2020a or later (with Image Processing Toolbox)

---

## 🖼️ GUI Overview

- **Browse**: Select CT scan image
- **Check Options**: Choose stages to visualize (Enhanced, Noise Removed, Edges, Binary)
- **Detection Buttons**:
  - `<2mm`: Detect small nodules (low risk)
  - `2mm to 8mm`: Medium nodules (moderate risk)
  - `>8mm`: Large nodules (high risk)
- **Output**: Shows bounding boxes and classifies cancer risk based on area

---

## 🧪 Processing Pipeline

1. **Image Loading**
2. **Preprocessing**
   - Grayscale conversion
   - Contrast adjustment using `imadjust`
3. **Noise Reduction**
   - Median filter using `medfilt2`
4. **Edge Detection**
   - Canny edge detection via `edge(..., 'Canny')`
5. **Binarization**
   - Otsu's threshold via `graythresh` and `imbinarize`
6. **Morphological Operations**
   - Opening via `imopen` and `strel('disk', radius)`
7. **Labeling & Detection**
   - `bwlabel`, `regionprops`, bounding box annotation
8. **Risk Display**
   - Estimated cancer risk based on nodule size and area

---

## 📷 Example Output

```matlab
imshow(img); % Original CT scan
rectangle('Position', bbox, 'EdgeColor', 'r', 'LineWidth', 2); % Highlight nodules
```

---

## 🚀 How to Run

1. Open MATLAB
2. Copy and paste the full GUI function into a script file (e.g., `lungNoduleDetectionGUI.m`)
3. Run the file and interact via the launched GUI

```matlab
lungNoduleDetectionGUI
```

---

## 📈 Risk Assessment Categories

| Nodule Size      | Area (Pixels) | Cancer Risk |
|------------------|---------------|--------------|
| Small (<2mm)     | 20–50         | < 1%         |
| Medium (2–8mm)   | 50–200        | 1–2%         |
| Large (>8mm)     | >200          | 9–10%        |

---

## 📝 Notes

- GUI supports grayscale or RGB images (auto-converts)
- Adjustable thresholds and filters allow flexible tuning
- Results are visual and quantitative (nodule count, size, bounding boxes)

---

## 📄 License

This project is developed for academic use and research. Feel free to modify and improve.

