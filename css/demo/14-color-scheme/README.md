# Demo 14 — Creating a Color Scheme

## Starting point and objectives

Open `index.html` and `styles.css` at http://localhost:5500/css/demo/14-color-scheme/index.html. The page contains a set of calculated color swatches and a static Task Manager design preview. It is not a functional task application. Use DevTools to change colors one at a time, then reload to restore the original preview. Changes in the editor must be reverted manually.

The goal is to decide which colors to use and why, not to memorize hex values or produce a single universally correct palette. By the end, attendees should be able to choose a primary hue, derive a complementary hue, construct variations and assign them to purposeful interface roles.

## 1. Establish design intent before choosing a hue

Imagine a productivity application that should feel clear, professional and approachable. Start by identifying the primary tasks (reading, creating and completing tasks), the supporting information and the intended audience. Consider the existing typography, corner radii and spacing. Select a primary hue that fits those decisions. For this example, choose `#125BD4` (blue). This is a candidate, not a universal recommendation for productivity software. A different audience or visual personality might justify a different hue.

Compare a vivid blue with a more muted blue on the header. Ask whether each supports the intended visual character and whether either competes with the actual task content. Restore the header after comparing.

## 2. Explore complementary hues

Open [Coolors — #125BD4](https://coolors.co/125bd4) and locate the complementary harmony. Alternatively use [Adobe Color](https://color.adobe.com/create/color-wheel) or [Paletton](https://paletton.com/). On the CSS HSL wheel the base hue of this blue is approximately 217.42°. Rotate it by 180°, wrapping at 360°, to obtain approximately 37.42°. Keep saturation and lightness unchanged to get `#D48B12` (orange). This is an RGB/HSL complementary pair. Paletton uses an artistic RYB wheel, so its result may differ; do not present those models as interchangeable.

Display both colors together. Compare analogous and monochromatic alternatives in the tool, then return to complementary. Ask: Which color should establish identity, and which should attract attention? Use blue as the supporting brand family, orange as a selective accent, and neutrals for the majority of reading surfaces. Do not assume that complementary colors can be used as foreground/background text pairs without checking contrast.

If the online tools are unavailable, use the supplied calculated swatches and the exact base pair in this README. The remainder of the demo works offline.

## 3. Generate variations — first explore, then select

In Coolors, explore the tints, shades and tones sections for each base color. The three concepts refer to traditional mixtures with white, black and neutral gray respectively. Our local swatches use simple sRGB channel interpolation at 0%, 20%, 40%, 60% and 80% of the mixing color. Tools may use other algorithms. Equal numeric steps do not guarantee equal perceived differences.

For one channel, the result is `(1 - amount) × base + amount × mixing color`, rounded to an integer in the range 0–255. For example, mixing blue with 80% white gives RGB (208, 222, 246), or `#D0DEF6`. Mixing with 40% black gives RGB (11, 55, 127), or `#0B377F`.

- **Tints:** start by testing 60–80% white for quiet surfaces, 20–40% for selected backgrounds or stronger fills. Move toward white if a large surface is visually distracting. Choose actual text colors together with the surface.
- **Shades:** try 20–60% black for text, strong borders or darker interaction states. The candidate must retain the desired identity and provide enough contrast in its role. Very dark shades can approach black and need not be used for every component.
- **Tones:** try 20–60% neutral gray for muted alternatives when a hue feels too vivid. Neutral gray is `#808080` in this exercise, not an arbitrary hue. Mixing with gray may change lightness as well as saturation; the same HSL saturation reduction is not generally identical to this mixture.

Ask attendees to compare the rows: which variations could serve a large surface, a small badge, a button or a readable link? Select only variations that have a purpose. You do not need to use every swatch, and the percentages are starting points rather than design rules.

## 4. Apply the tints to surfaces

In DevTools, edit `.dashboard__nav` successively to the blue base `#125BD4`, a 60% tint `#A0BDEE`, and an 80% tint `#D0DEF6`. Keep its dark link text unchanged initially and compare how readable and prominent it is. The vivid base competes with the header and may make dark links difficult to read. The 80% tint gives a quieter surface while the 60% tint distinguishes the selected view. Inspect both actual link/background pairs. Restore the original navigation colors.

## 5. Apply shades to text and interaction states

Inspect the header (`#125BD4` with white text) and the navigation link color (`#0B377F`). Compare the original link color with the base blue and test contrast on both navigation states. Try a darker blue header, for example `#0E49AA`, and decide whether it adds useful emphasis. For the orange action compare these alternatives:

```css
.dashboard__action {
  background: #D48B12;
  color: #172033;
}

.dashboard__action:hover {
  background: #DDA241;
}
```

Try white text on the base orange instead of the dark text. Measure the contrast; white on orange is about 2.80:1, while the dark action text is about 5.81:1. White is insufficient for normal text, even though the orange is vivid. Restore dark text. Try the 20% black orange shade (`#AA6F0E`) and compare its contrast with the dark text. The contrast falls to about 3.87:1, so change the pairing or select another variation; a darker hover state is not automatically more accessible.

## 6. Use tones to control visual emphasis

Try a blue tone (40% gray, `#3E6AB2`) on the header and compare it with the original blue at the same size. Compare the orange base against its 40% gray tone in the action button. The 40% gray orange tone is `#B2873E`. The muted alternative may better fit a calm application, but verify white/dark text contrast separately. Ask whether the primary action is still easy to identify. Restore the original preview.

## 7. Define a small role-based palette

A palette is a set of candidate colors; a color scheme assigns colors to functional roles. The preview uses the following example mapping; it is not mandatory. Record the role, hex value, and its actual pairing before adopting it.

| Role | Example value | Reason |
|---|---|---|
| Page background | `#F3F6F9` | Quiet neutral canvas |
| Card surface | `#FFFFFF` | Reading area |
| Body text | `#263C55` | Dark, legible text |
| Boundary | `#8095AA` | Component separation |
| Brand header | `#125BD4` | Blue identity with white text |
| Navigation surface | `#D0DEF6` | 80% blue tint |
| Selected navigation | `#A0BDEE` | 60% blue tint |
| Navigation text | `#0B377F` | 40% black blue shade |
| Primary action | `#D48B12` | Complementary orange accent |
| Action text | `#172033` | Dark foreground |
| Hover | `#DDA241` | 20% white orange tint |
| Focus | `#0B377F` | Visible outline on light backgrounds |
| Warning status | `#F6E8D0` with `#69460A` | Light orange tint, dark text |
| Success status | `#ECF0DC` with `#344C36` | Distinct green family, visible text |

For an actual application also define error and information roles, even if no example of them appears in this preview. Semantic colors do not need to be members of the brand harmony. Do not rely on hue alone: status labels and other non-color cues must carry meaning. Keep the same roles consistently across components. Do not introduce custom properties yet; repeated values are the motivation for Part VIII.

## 8. Balance and verify the interface

Let neutral surfaces dominate, supporting blues establish hierarchy and orange highlight selected actions. Try orange on the entire page, then restore the original. Discuss the difference between physical area and visual weight. The next slide introduces the 60–30–10 heuristic for this purpose.

Use [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/) or the DevTools color picker to check actual foreground/background combinations, including default, hover and focus states. Aim for WCAG AA text contrast of at least 4.5:1 for normal text and 3:1 for large text where applicable. Relevant non-text UI information generally requires 3:1. A harmonious palette does not guarantee contrast. Check the visual result with the actual application text, at narrow and wide viewport widths and with keyboard focus. Repeat the selection if a color is hard to distinguish; adjusting the tint, shade or tone is often enough without changing the hue.

Finish by asking each attendee to explain one tint, one shade, one tone and one accent choice, rather than selecting colors by taste alone. Reload to restore all temporary DevTools modifications. Exercise 14 applies the same workflow to the actual Task Manager.
