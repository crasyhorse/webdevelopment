---
layout: pageBar
class: content-offset
---

# Section, article, or just a container?

| **Element** | **Use it when…** |
| --- | --- |
| `<section>` | Content forms a **thematic group**, usually with a heading |
| `<article>` | Content is **self-contained**, meaningful independently |
| `<div>` | You need a wrapper but **no specific semantic meaning** |

```html
<section aria-labelledby="tasks-heading">
  <h2 id="tasks-heading">Tasks</h2>
  <ul><li>Review pull request</li></ul>
</section>
```

<!--
- A section represents a thematic grouping, commonly introduced by a heading.
- An article is independently reusable or distributable: a post, comment, or standalone card may qualify.
- A task list itself is already expressed semantically by ul and li; do not wrap every item in article automatically.
- div remains appropriate for layout or styling hooks where no semantic element fits.
- A section does not automatically receive a named region landmark; its accessible name matters.
- The aria-labelledby here references visible heading text rather than duplicating a label.
-->
