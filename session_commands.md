Graph is constructed from the data at the [Worldbuilding Stack Exchange](https://worldbuilding.stackexchange.com/tour)

### Labels and relationship types
`GRAPH.QUERY worldbuilding "MATCH (a)-[e]->(b) RETURN DISTINCT LABELS(a), TYPE(e), LABELS(b)"`

### Label properties
`GRAPH.QUERY worldbuilding "MATCH (q:Question) RETURN q LIMIT 1"``

### Variable-length paths
`GRAPH.QUERY worldbuilding "MATCH (u:User)-[*]->(t:Tag) RETURN u.name, t LIMIT 20"`

### Filtering results
`MATCH (a:Answer) WHERE a.score > 500 RETURN a`

### Returning multiple entities
`MATCH (a:Answer)-[]->(q:Question)-[:HAS_TAG]->(t:Tag) RETURN q, a, t LIMIT 1`
