
# Project Blueprint

## Overview

A multi-feature Flutter application that showcases modern UI, generative AI capabilities, and best practices in app development. The app will include features like text generation from prompts, intuitive navigation, and a clean, responsive design.

## Style, Design, and Features

### Implemented

*   **Core Structure:** A multi-screen application with a tab-based navigation structure.
*   **UI Components:**
    *   `AppSearchBar`: A custom, reusable search bar with a debounce mechanism to optimize performance.
*   **Screens:**
    *   `HomeScreen`: The main landing screen.
    *   `StoreScreen`: A screen to display products.

### Current Plan: Generative AI Text Generation

This plan outlines the steps to add a new feature that allows users to generate text using a generative AI model from Firebase.

1.  **Add Dependencies:** Add the `firebase_core` and `firebase_ai` packages to the `pubspec.yaml` file.
2.  **Initialize Firebase:** Update `lib/main.dart` to initialize Firebase.
3.  **Create Text Generation Screen:**
    *   Create a new file at `lib/features/text_generation/presentation/screen/text_generation_screen.dart`.
    *   Build a UI with a `TextField` for user prompts, a button to trigger generation, and a `SelectableText` widget to display the output.
4.  **Implement Text Generation Logic:**
    *   Use the `firebase_ai` package to connect to the Gemini model.
    *   Create a function to send the user's prompt to the model and receive the generated text.
    *   Display the result in the UI, along with loading and error states.
5.  **Add Navigation:** Add a `FloatingActionButton` to the `HomeScreen` to provide an entry point to the new text generation feature.
