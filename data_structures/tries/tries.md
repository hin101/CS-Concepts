Tries
=====
A trie is a varient of an n-ary tree in which characters are stored at each node. Each path down the tree may represent a word.

The * nodes (or null nodes) are often used to indicate complete words.

A node in a trie could have anywhere from 1 through `ALPHABET_SIZE + 1` children or 0 through `ALPHABET_SIZE` if a boolean flag is used instead of a null node.

It is commonly used to store the entire English language for quick prefix lookups.
