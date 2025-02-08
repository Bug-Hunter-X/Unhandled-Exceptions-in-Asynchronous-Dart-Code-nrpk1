# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart programming: neglecting to handle all possible exceptions during network requests.
The `bug.dart` file showcases the issue, while `bugSolution.dart` provides an improved solution with more comprehensive error handling.

## Problem

The original code only handles exceptions during JSON decoding and HTTP requests returning non-200 status codes.  It lacks handling of exceptions such as timeouts or network connectivity issues that might prevent the HTTP request from completing.

## Solution

The solution enhances the exception handling with more specific checks for different error types and scenarios. This will prevent crashes and makes the code more robust.  It demonstrates best practices for handling asynchronous operations.
