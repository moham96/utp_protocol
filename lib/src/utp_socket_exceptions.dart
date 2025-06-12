class UtpSocketTimeoutException implements Exception {
  /// Description of the cause of the timeout.

  /// The duration that was exceeded.
  final Duration? duration;

  UtpSocketTimeoutException([this.duration]);

  @override
  String toString() {
    String result = "TimeoutException";
    if (duration != null) result = "TimeoutException after $duration";
    return result;
  }
}

class UtpSocketDisposedException implements Exception {
  /// Description of the cause of the socket being disposed.
  final String? message;

  UtpSocketDisposedException([this.message]);

  @override
  String toString() {
    return message ?? "SocketDisposedException: The socket has been disposed.";
  }
}

class UtpSocketClosedException implements Exception {
  final String? message;

  UtpSocketClosedException([this.message]);

  @override
  String toString() {
    return message ??
        "SocketClosedException: The socket is closed or closing, cannot add event.";
  }
}
