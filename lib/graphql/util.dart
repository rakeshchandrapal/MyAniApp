String removeFragmentDups(String str) {
  return Set.from(str.split("\n\n").map(
        (e) => e.trim(),
      )).join("\n");
}
