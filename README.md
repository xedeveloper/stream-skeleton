# stream_skeleton

## About

A basic architecture to handle your flutter project at ease

## Getting Started

### Installation

Install the Flutter SDK according to the instruction on the [Flutter Official](https://flutter.dev/), then simply run the application in your desired environment.

### Current Support

Currently this project supports Android, iOS, Web

### Build Runner

During development, you'll often need to run the following command for auto code generation of some classes which are annotated:

```shell
dart run build_runner watch --delete-conflicting-outputs
```

### Build Structure

The project includes configuration for two environments. Which are:

- dev
- prod

## Good Coding Practice

Before opening up a pull request, there are a few things developer need to do to make the code review process easier for other developers. Bad quality pull request are a bad usage of other developer's time.

- No warnings/errors from Dart Analysis(Linter)
- Spelling is correct and class/variable names make sense
- File name & the class name created in the file should match
- Try to avoid nesting of code if possible
- Consistent naming convention and [Coding Style](https://dart.dev/effective-dart/style) must be followed.
- Test cases are mandatory for each logic that is being added.
- Remove unused/commented code.
- documentation of each code is recommended.

## Git Flow

The project currently follows [Git Flow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) strategy for the source control.
The default branch will be the develop branch initated at creation of project.

## Git commit
The project must follow git commit strategy to maintain the quality of source control of project. 
Follow [Git Commit Strategy](https://medium.com/@sudarshan.mane7993/write-git-commit-message-like-a-pro-a20728f02e0c) guide on Medium.

## Tests

It is important to write test cases for the each function. While writing test cases, make sure the test file exists as the same structure as lib file.
For e.g.
If developer is writing a test case for `ExampleClass` which is at `lib/core/example_class.dart` then the test file should be at `test/core/example_class_test.dart`
