# Morse Code Generator (MCG)

An image-based Morse code generator developed using Scilab's Image Processing and Computer Vision (IPCV) toolbox integrated with Tesseract-OCR for text extraction and audio generation capabilities.

## Overview

This application converts text extracted from images into Morse code format with corresponding audio output. Developed as a project for the Digital Signal Processing (DSP) course in 2024, it demonstrates the integration of image processing, optical character recognition (OCR), and audio generation within Scilab's computing environment. The tool bridges historical communication methods with modern technology, serving both practical and educational purposes in learning and applying Morse code.

## Features

- **Image Input & Pre-processing**: Accepts image inputs and applies grayscale conversion, thresholding, binarization, and noise reduction to optimize OCR accuracy
- **Text Extraction**: Utilizes Tesseract-OCR to extract text from processed images
- **Manual Text Editing**: Allows users to correct OCR inaccuracies or input custom text directly
- **Morse Code Translation**: Converts extracted or edited text into standard Morse code format (dots and dashes)
- **Audio Generation & Playback**: Generates and plays Morse code audio with start/stop controls
- **Save Functionality**: Exports Morse code audio files in WAV format
- **Graphical User Interface**: Intuitive GUI for accessing all functionalities with clear display of extracted text and generated Morse code

## Limitations

Due to Scilab's more limited toolset and package availability compared to platforms like MATLAB, Python with machine learning libraries, or Jupyter Notebook, the application faces certain constraints:

- **Handwritten & Cursive Text**: The OCR engine struggles with handwritten or cursive inputs, often resulting in inaccurate or no text extraction
- **Non-Standard Fonts**: Recognition accuracy decreases with complex or stylized fonts
- **Image Quality Dependency**: Performance is optimal with high-quality, clear images of printed text
- **Advanced Processing**: Limited access to advanced image processing techniques and machine learning integration available in other platforms

*Note: The text editing feature addresses these limitations by allowing manual correction of OCR results.*

## System Requirements

**Important:** Ensure correct versions are installed for proper functionality.

- **Scilab**: Version 6.1.1
- **Tesseract-OCR**: Version 5.4.0 *(Critical - the project will not run correctly without this; can try with other versions or other OCRs)*
