---
layout: pageBar
class: content-offset
---

# From source to pixels

- **Parse:** HTML and CSS become the DOM and CSSOM.
- **Render:** The browser determines what to display and calculates its geometry.
- **Draw:** Painting and compositing produce the final pixels.

<div class="mt-5"></div>

```mermaid
flowchart LR
    HTML["HTML"] --> DOM["DOM"]
    CSS["CSS"] --> CSSOM["CSSOM"]

    DOM --> RENDER["Render tree"]
    CSSOM --> RENDER

    RENDER --> LAYOUT["Layout"]
    LAYOUT --> PAINT["Paint"]
    PAINT --> COMPOSITE["Composite"]

    classDef blue fill:#dbeafe,stroke:#2563eb,stroke-width:2px,color:#1e293b
    classDef green fill:#dcfce7,stroke:#16a34a,stroke-width:2px,color:#1e293b
    classDef yellow fill:#fef3c7,stroke:#d97706,stroke-width:2px,color:#1e293b
    classDef purple fill:#f3e8ff,stroke:#9333ea,stroke-width:2px,color:#1e293b
    classDef red fill:#ffe4e6,stroke:#e11d48,stroke-width:2px,color:#1e293b
    classDef cyan fill:#e0f2fe,stroke:#0891b2,stroke-width:2px,color:#1e293b

    class HTML,DOM blue
    class CSS,CSSOM green
    class RENDER yellow
    class LAYOUT purple
    class PAINT red
    class COMPOSITE cyan
```

<!--
- Explain that the browser does not render HTML source code directly.
- The HTML parser constructs the DOM, representing the document's structure.
- The CSS parser constructs the CSSOM, representing parsed CSS rules.
- Style computation uses the DOM and CSS information to determine computed styles.
- The render tree represents renderable content with its computed styles. It is not an exact copy of the DOM.
- Layout calculates the dimensions and positions of rendered objects.
- Paint produces drawing instructions for visual properties such as text, backgrounds, borders, and shadows.
- Compositing combines the relevant painted layers and produces the final displayed result.
- This is a simplified conceptual pipeline. Browsers may optimize, skip, or overlap stages.
- Ask participants: Does changing the color of an element require recalculating its position?
- Explain that a color change generally requires painting but not layout, while a geometry change may require layout and subsequent stages.
-->
