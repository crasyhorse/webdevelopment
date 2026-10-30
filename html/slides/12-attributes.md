---
layout: pageBar
class: content-offset
---

# Elements, attributes, and useful defaults

| **Attribute** | **Typical purpose** |
| --- | --- |
| `id="tasks"` | Unique identifier in this document |
| `class="task-list"` | Group elements for styling or scripting |
| `lang="en"` | Declares the language of content |
| `data-task-id="42"` | Application-specific metadata |

```html
<ul id="tasks" class="task-list" lang="en">
  <li data-task-id="42">Write tests</li>
</ul>
```

<!--
- Attributes are written on elements and can change semantics, behavior, or available metadata.
- id must be unique within the document, unlike a class which can be shared.
- class is a whitespace-separated list and is primarily useful for styling and scripting.
- lang is important for pronunciation and language-aware tools, not merely localization metadata.
- data-* attributes expose application-defined strings through the DOM dataset API.
- Use lowercase names and quoted values consistently, even where HTML permits other forms.
-->
