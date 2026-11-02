---
layout: pageBar
class: content-offset
---

# Understanding Viewports

| Viewport | Description |
|---|---|
| **Initial viewport** | Browser's viewing area before viewport overrides are applied. |
| **Layout viewport** | Viewport used to lay out the document, after processing viewport metadata. |
| **Visual viewport** | Currently visible portion of the layout viewport; may shrink during pinch zoom. |
| **Virtual viewport** | Wide layout viewport used by some mobile browsers for desktop-oriented pages, typically around 980 CSS pixels. |

<!--
- Explain that these terms do not represent four independent viewports.
- Initial viewport: The browser's viewing area before viewport overrides. Its dimensions depend on the browser window or device.
- Layout viewport: Determines the coordinate space used for document layout. MDN also calls the resulting viewport the "actual viewport".
- Visual viewport: Represents the visible portion of the layout viewport. Pinch zoom can make it smaller without reflowing the page.
- Virtual viewport: A mobile-browser compatibility technique. Without viewport metadata, browsers may use a wide layout viewport, often around 980 CSS pixels, and scale the page down.
- Emphasize that the virtual viewport is not a separate viewport in addition to the layout viewport. It describes a particular layout viewport configuration.
- Explain that viewport dimensions are expressed in CSS pixels, not necessarily physical device pixels.
-->
