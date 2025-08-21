# LargeIterable<VT, E>

Iterates items by **mapping** a key→value storage structure:

- Backing store: `Map<String, VT>` plus a `List<String>` of keys.
- Optional `extras` sequence appended after keys.
- `modifier: E Function(VT)` transforms values on the fly.

Useful for presenting large datasets without materializing full transformed lists.
