[Cypher Language cheatsheet](http://www.jeffreylovitz.com)

Graph is constructed from the data at the [Worldbuilding Stack Exchange](https://worldbuilding.stackexchange.com/tour)

### Labels and relationship types (1)
`GRAPH.QUERY worldbuilding "MATCH (a)-[e]->(b) RETURN DISTINCT LABELS(a), TYPE(e), LABELS(b)"`

### Label properties (2)
`GRAPH.QUERY worldbuilding "MATCH (q:Question) RETURN q LIMIT 1"`

### Filtering results with the WHERE clause (3)
`GRAPH.QUERY worldbuilding "MATCH (a:Answer) WHERE a.score > 500 RETURN a"`

### Variable-length paths (4)
`GRAPH.QUERY worldbuilding "MATCH (u:User)-[*]->(t:Tag) RETURN u.name, t LIMIT 20"`

### Using functions in queries (5)
`GRAPH.QUERY worldbuilding "MATCH (q:Question)-[e]->(t:Tag) RETURN t, SUM(q.score), COUNT(e)"`

### Returning multiple entities (6)
`GRAPH.QUERY worldbuilding "MATCH (a:Answer)-[]->(q:Question)-[:HAS_TAG]->(t:Tag) RETURN q, a, t LIMIT 1"`
