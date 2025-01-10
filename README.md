# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart code handling asynchronous operations. The provided `bug.dart` file showcases a basic `Future` that fetches data from an API but lacks specific error handling for various exception types. The solution, `bugSolution.dart`, enhances error handling to provide more informative messages and graceful recovery options.

## Bug
The original code uses a generic `catch` block, which may not be sufficient for detailed debugging and handling of specific network errors.  It also only prints the error to the console; in production applications this isn't ideal for logging and reporting.

## Solution
The improved code differentiates between different exception types (e.g., SocketException, TimeoutException) and provides more context-specific handling and logging. This approach leads to more robust and informative error handling, which is essential for production-ready applications.