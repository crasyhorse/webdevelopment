---
layout: pageBar
class: content-offset
---

# CSS Attribute Selectors

| Rule | Meaning |
|---|---|
| `input[required] { }` | An `input` with a `required` attribute. |
| `input[type="email"] { }` | An `input` whose `type` is exactly `email`. |
| `[data-priority^="high"] { }` | Attribute value **starts with** `high`. |
| `[data-priority$="high"] { }` | Attribute value **ends with** `high`. |
| `[data-priority*="high"] { }` | Attribute value **contains** `high`. |

**Use attributes to target meaningful markup; ordinary classes remain useful for styling components.**

<!--
- Attribute presence does not depend on its value.
- Equals is an exact string match. ^=, $= and *= select prefix, suffix and substring matches.
- Attribute matching case-sensitivity depends on the attribute/grammar; the optional i flag performs ASCII case-insensitive matching.
- For reusable Task Manager components, ordinary class selectors are generally preferable.
- Show native form attributes as an intuitive example.
-->
