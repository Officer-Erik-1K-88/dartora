# QueryType

`QueryType` is an enumeration used internally by the search parser to categorise query terms based on the presence of special operators.  It allows the parser to track whether a term is **optional**, **required**, **forbidden**, or a combination of these roles.  For example, a single token may be both optional and forbidden in some edge cases (though such a query would never match).

### Values

| Value | Meaning |
|-------|---------|
| `optional` | The word appears without any special prefix.  It contributes positive points if matched but is not required. |
| `require` | The word is marked as required (typically via quotes).  A result must contain all required words in at least one of its fields to be considered valid. |
| `cannot` | The word is prefixed by `-` (minus) and is forbidden.  If it appears in a field, the result is invalid. |
| `optReq` | A combination meaning the word is both optional and required.  This can occur when multiple prefix rules collide; the engine treats it as required. |
| `reqCnot` | The word is both required and forbidden; the engine treats it as forbidden. |
| `optCnot` | The word is optional and forbidden; the engine treats it as forbidden. |
| `all` | The word is simultaneously optional, required and forbidden.  This effectively means the word cannot contribute any meaningful role. |

Most queries fall into the first three categories.  The combined cases exist to support future syntactic extensions and to handle unusual scenarios gracefully.
