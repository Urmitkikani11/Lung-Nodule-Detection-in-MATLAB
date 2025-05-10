clc;
clear;
close all;

% Step 1: Image Acquisition
% Load a lung CT scan image (grayscale image)
imgPath = "IMAGE PATH";
if exist(imgPath, 'file')
    img = imread(imgPath);
else
    error('File not found.');
end
figure, imshow(img);
title('Original Lung CT Image');

% Step 2: Image Pre-processing
% Convert the image to grayscale if not already
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Step 3: Image Enhancement (e.g., contrast adjustment)
enhanced_img = imadjust(img);
figure, imshow(enhanced_img);
title('Enhanced Image (Contrast Adjusted)');

% Step 4: Noise Reduction (use a median filter)
filtered_img = medfilt2(enhanced_img, [3 3]);
figure, imshow(filtered_img);
title('Filtered Image (Noise Reduction)');

% Step 5: Edge Detection (using Canny edge detection)
edges = edge(filtered_img, 'Canny');
figure, imshow(edges);
title('Edge Detection using Canny');

% Step 6: Segmentation (Thresholding to isolate lung nodule regions)
% Thresholding to segment the nodule regions
threshold_level = graythresh(filtered_img); % Otsu's threshold
binary_img = imbinarize(filtered_img, threshold_level);
figure, imshow(binary_img);
title('Binary Image (Thresholding)');

% Step 7: Morphological Operations to Clean Up the Image
se = strel('disk', 5); % structuring element
cleaned_img = imopen(binary_img, se); % morphological opening
figure, imshow(cleaned_img);
title('Cleaned Image (Morphological Operations)');

% Step 8: Lung Nodule Detection
% Label connected components in the binary image
labeled_img = bwlabel(cleaned_img);
stats = regionprops(labeled_img, 'Area', 'BoundingBox');

% Filter out small regions (assume nodules are larger than a threshold)
nodule_threshold = 100; % Set threshold for minimum nodule size
figure, imshow(img); % Show the original image
title('Detected Lung Nodules');
for i = 1:length(stats)
    if stats(i).Area > nodule_threshold
        % Highlight detected nodules on the original image
        bbox = stats(i).BoundingBox;
        rectangle('Position', bbox, 'EdgeColor', 'r', 'LineWidth', 2);
        hold on;
    end
end

title('Detected Lung Nodules');
