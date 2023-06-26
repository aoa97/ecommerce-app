dynamic elseNull({required bool condition, required dynamic child}) {
  if (condition) {
    return child;
  } else {
    return null;
  }
}
