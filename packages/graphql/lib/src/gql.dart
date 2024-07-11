String gql(String query, String fragments) {
  return """$query
$fragments  
""";
}
