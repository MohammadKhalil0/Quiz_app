# 📱 Flutter Quiz App
A simple True/False quiz application built with Flutter. The app presents a series of questions, each with an accompanying image, and provides instant feedback on user answers. It also displays a final score summary and allows the user to restart the quiz.

# 🚀 Features
🖼️ Displays a question with an image

✅ User can answer with True or False

📊 Tracks the number of correct answers

⚠️ Shows final result in an alert dialog

🔄 Allows restarting the quiz

✨ Clean and responsive UI

# 🧠 Project Structure
### main.dart

Contains the main UI and quiz logic. Handles user interaction, answer checking, score tracking, and quiz reset.

### question.dart

Defines the Question class model with fields for question text, image path, and correct answer.

### app_brain.dart

Controls the quiz logic: manages the list of questions, handles current question index, and exposes utility methods like nextQuestion(), isFinished(), and reset().

### images/

Folder that stores all images associated with the quiz questions.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
