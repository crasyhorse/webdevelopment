---
layout: pageBarTwoCols
class: content-offset
---

# Normal Flow & Display

::left::

**Block boxes** start on a new line and normally stretch across the available inline space.

```css
.card { display: block; }
```

**Inline boxes** flow with surrounding text; ordinary inline elements do not honor `width` and `height`.

```css
.label { display: inline; }
```

::right::

**Inline-block** flows with text but accepts dimensions.

```css
.tag {
  display: inline-block;
  padding: 0.25rem 0.5rem;
  width: 6rem;
}
```

`display: none` removes an element from the layout (and typically the accessibility tree).

::below::

- **Normal flow** is the browser's default arrangement before layout tools such as Flexbox or Grid.

<!--
- Show block divs stacking versus inline spans sharing a line.
- Discuss that vertical margins and padding on ordinary inline boxes behave differently; they do not push surrounding lines apart in the same way as block boxes.
- The outer display type is different from how descendants are laid out.
- We introduce flex and grid in later parts.
- MDN: https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Introduction
-->
