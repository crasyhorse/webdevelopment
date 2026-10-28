# AGENTS.md — CSS Workshop

## Scope and source of truth

These instructions apply to the `css/` workshop in `https://github.com/crasyhorse/webdevelopment` (development branch `css`). The course uses Slidev, the HEP theme, English teaching material, reusable components/layouts in `shared/`, and the local demo server `http://localhost:5500/`.

- Start from the latest user-uploaded project or explicitly designated revision. Inspect the actual directory structure, source files and `slides.md` before editing. Do not reconstruct the course from this guide.
- Preserve user edits and unrelated files. Modify only what is required; do not modify `shared/` without explicit permission.
- Existing content is evidence of style, not proof of correctness. Report discrepancies and fix those within the requested scope; do not silently propagate mistakes or broaden the scope.
- This guide combines established course conventions, the author's explicit instructions, and the agreed SVG design standard below. The user's latest concrete instructions take precedence over defaults in this guide.

## Course organization and pedagogy

The workshop currently covers CSS fundamentals, selectors/cascade/inheritance, BEM, normal flow and box sizing, and modern layout (Parts I–V). Planned Parts VI–X: Responsive Web Design, Visual Design, CSS Custom Properties, Transitions & Animations, Maintainable CSS. These are planning directions, not fixed slide counts or permission to create them automatically.

- Begin a part with `section`, followed by `learningOutcomes`; close it with `keyTakeaways`.
- Teach beginners why a concept works. Introduce the problem, explain limitations of the existing approach, introduce the solution, show a focused example, and let attendees predict, experiment and explain.
- Introduce prerequisites first. Mark supplied implementations of later concepts explicitly (e.g. a media query in a Grid exercise before the responsive design part).
- Choose the presentation medium by learning objective: diagrams for geometry/relationships; code for syntax and behavior; tables for concise comparison/reference; demos for experiments; quizzes for understanding; exercises for application.
- Avoid property catalogs, unnecessary repetition among demonstrations, quizzes and exercises, and decorative complexity. Use the Task Manager context where meaningful.
- Preserve technical correctness, semantic HTML, DOM order, keyboard accessibility and readable examples. Explain the interaction of properties rather than promising unconditional behavior.

## Slide sources and presentation

- Keep `slides.md` as the ordered manifest of separate Markdown slides in `slides/`.
- Use consecutive numeric prefixes (`88-grid-tracks.md`), never intermediate suffixes such as `54a`. Renumber affected filenames and update imports and references after insertion/removal/reordering.
- Use descriptive kebab-case filenames. Question-mark quiz slides alone use `NN-quiz-YY.md` where applicable; use descriptive names for embedded quizzes, matching and memory activities. Exercise slides use `NN-exercise-YY.md`. Keep exercise and activity identifiers consistent with linked files; do not renumber existing activities gratuitously.
- Use `cover`, `section`, `learningOutcomes`, `pageBar`, `pageBarTwoCols`, `exercise` and `keyTakeaways` as appropriate. Inspect their actual implementation before use. Normal content slides generally have `class: content-offset`.
- Use `pageBar` for ordinary content and compact tables. Use `pageBarTwoCols` for direct comparisons or code and its corresponding result; use `::left::`, `::right::`, `::below::`. When comparing two illustrations put shared conclusions in `::below::`. Do not invent grids when existing slots suffice. A small bespoke arrangement may be appropriate for exceptional cases (e.g. multiple positioning modes).
- Prefer short, descriptive headings and selective bold emphasis. Use an em dash between topic and explanation where useful. Learning outcomes use actionable verbs in a numbered list; takeaways use a short bullet list of transferable principles.
- Use fenced code blocks with appropriate language (`css`, `html`), small examples and readable formatting. Keep explanatory CSS identifiers in backticks, including in speaker notes; do not backtick ordinary words simply because they are also property names. Use local slide CSS overrides only where needed for legibility, not global theme changes.
- Do not cram a slide. Put long explanations into speaker notes or README files. Avoid shrinking text to fit instead of simplifying.
- Speaker notes use trailing Markdown HTML comments. Include useful teaching cues, predictions, common misconceptions, DevTools experiments, edge cases and relevant technical references; do not merely repeat the slide.

Typical slide:

```markdown
---
layout: pageBar
class: content-offset
---

# Meaningful title

- Concise teaching point.

<!--
- Explain why the behavior occurs.
-->
```

## BEM consistency

After the introduction of BEM in Part III, use BEM-compatible class names in all instructional HTML and CSS examples, including future slides, demos, exercises and reference solutions.

- Use meaningful lowercase, hyphen-separated block names. Independent reusable components may be separate blocks; a block name does not require a BEM delimiter.
- Name elements `block__element`, relative to their block rather than the HTML nesting depth. Do not use `block__element__child`.
- Name modifiers `block--modifier` or `block__element--modifier`. Prefer purpose-oriented names over incidental visual properties; literal layout variants are appropriate when teaching the corresponding CSS behavior.
- Always retain the base block or element class when applying a modifier, including in HTML examples and illustrative code comments where the HTML is omitted.
- Prefer simple class selectors over unnecessarily chained, type-qualified or structure-dependent selectors. A block modifier may legitimately scope its own elements. Preserve semantic HTML and attributes.
- Keep class names consistent between related examples and corresponding SVG labels, demos, exercises and solutions. Update references when renaming an example; do not modify unrelated implementations or break exercise handoffs.
- Preserve intentional non-BEM examples used to demonstrate an anti-pattern or explain a selector concept.
- Slidev infrastructure, utility classes and internal SVG styling classes are exempt; visible instructional CSS class labels inside SVGs are not.

## SVG illustration design system

This section is the agreed standard for new and revised technical SVGs. Apply it consistently when asked to recolor or standardize the course. It does not authorize unrelated bulk edits. Preserve intentional exceptions such as syntax highlighting, the red question-mark asset, real screenshots, language-specific writing examples, and illustrations whose actual CSS color values are being taught.

### Semantic palette

Use the following exact hex values. Each row is a color family, from pale (100) to dark (500). The original box-model fills (300) and outlines (500) are retained.

| Family / token prefix | 100 | 200 | 300 | 400 | 500 |
|---|---|---|---|---|---|
| Content / blue `content` | `#E1ECF2` | `#C2D8E4` | `#A8C8D9` | `#7FA1B4` | `#4C7186` |
| Padding / green `padding` | `#ECF0DC` | `#D8E2B8` | `#C8D59A` | `#9FAD68` | `#6C7D2C` |
| Border / ocher `border` | `#F7F1DC` | `#EEE4B9` | `#E7D89B` | `#BEAB67` | `#8C7428` |
| Margin / orange `margin` | `#F8E9D8` | `#F1D3B1` | `#EBC08F` | `#C79962` | `#9A6A2C` |

| Neutral token | Hex | Typical use |
|---|---|---|
| `slate-50` | `#FAFBFC` | panels, near-white backgrounds |
| `slate-100` | `#F3F6F9` | container backgrounds |
| `slate-200` | `#E8EDF2` | muted regions |
| `slate-300` | `#CAD5E0` | subtle separators and panel outlines |
| `slate-500` | `#8095AA` | neutral frames and guides |
| `slate-700` | `#526B80` | secondary text |
| `slate-900` | `#263C55` | primary text and titles |

- In box model illustrations, preserve the strict semantic mapping: content blue, padding green, border ocher, margin orange. Margin color represents its extent, not a painted CSS background.
- In other layout illustrations, reuse the four color families for distinguishing objects, not necessarily for literal box-model layers. Keep an object's color stable across related diagrams and comparison states (including existing blue/orange/green A/B/C examples).
- Default to level 300 fills and level 500 outlines. Use 100/200 fills to de-emphasize supporting regions, 400 for stronger emphasis, and 500 for outlines. Use neutral frames rather than assigning semantic colors to all containers. Do not invent arbitrary tints.
- Use `slate-900` for text on colored fills; `slate-700` for secondary text where contrast allows. Semantic 500 text is optional for large labels only when contrast is sufficient. Check text contrast (4.5:1 for normal text, 3:1 for large text as practical targets) and important graphical boundaries; use darker neutral text or another non-color cue when needed.
- Never rely on hue alone to communicate a distinction; use labels, geometry, patterns or line styles as appropriate.

### Typography

| Role | Reference size | Weight |
|---|---:|---:|
| Title | 28px | 700 |
| Heading | 24px | 700 |
| Label | 20px | 400 |
| Annotation | 16px | 400 |
| Detail | 14px | 400 |

- Prose, titles, item labels, measurements expressed in ordinary language and explanations: `Arial, Helvetica, sans-serif`.
- Literal CSS properties, values (including `2fr`, `100px`), selectors and declarations: `"DejaVu Sans Mono", Consolas, monospace`.
- Use weights 400 and 700; avoid unnecessary italics or extra weights. Use consistent baseline alignment and text anchors.
- Sizes above are reference values for an illustration coordinate system, not fixed values for every SVG. Scale to the actual `viewBox` and placement on the slide; match apparent text size across related diagrams and check actual projected readability. Avoid typography changes that cause overflow or collisions. Use font fallback stacks and no external font loading. Font availability varies by renderer/platform; check the target environment.
- Keep the SVG styles self-contained. The Slidev stylesheet does not normally cascade into an SVG loaded through `<img>`. Prefer reusable internal style classes; do not depend on an external CSS file being loaded within the SVG image.

Reference internal styles (scale sizes as needed):

```css
text { font-family: Arial, Helvetica, sans-serif; font-size: 20px; font-weight: 400; fill: #263C55; }
.title { font-size: 28px; font-weight: 700; }
.heading { font-size: 24px; font-weight: 700; }
.label { font-size: 20px; }
.annotation { font-size: 16px; fill: #526B80; }
.detail { font-size: 14px; fill: #526B80; }
.code { font-family: "DejaVu Sans Mono", Consolas, monospace; }
.bold { font-weight: 700; }
```

### Geometry and graphic conventions

- Use SVG for technical diagrams, not decorative pictures. Preserve a meaningful `viewBox`, aspect ratio and sufficient whitespace. Provide `title`/`desc` where helpful and meaningful slide image `alt` text.
- Use reference stroke widths 1.5, 2, 3px and small corner radii 4, 8, 12px; scale to the coordinate system and apparent presentation size. Keep solid object outlines and dashed helper/container boundaries when they distinguish a conceptual boundary. Match styles across a series; avoid misleading decorative rounding on a diagram explaining actual border geometry.
- Ensure dimensions, proportions, gaps, axes, alignment, stacking and labels correspond exactly to the accompanying CSS under its stated assumptions. Do not label schematic geometry with exact numeric dimensions that it cannot represent.
- Separate independent examples into different SVG files when that facilitates one-to-one alignment with CSS snippets. Keep consistent colors, scale, orientation and item identities across comparisons. Use only necessary labels/arrows; do not overlap text or clip it.
- Place SVG assets in `public/images/` using descriptive kebab-case names. For slide embedding, prefer the existing convention (a wrapper avoids theme paragraph opacity effects):

```html
<div>
  <img src="/images/example.svg" alt="Meaningful description"
       class="block mx-auto w-full"
       style="max-height: 43vh; object-fit: contain;" />
</div>
```

Adjust the height to the layout and accompanying text; 43vh is a common starting point, not a mandatory limit. Respect user-managed alignment and do not edit Markdown when only the SVG is requested.

### Editable SVG source formatting

- Always store SVG source as readable, multiline XML; never minify it or put the entire graphic on one line.
- Use two-space indentation for nested elements and separate sibling elements onto their own lines. Format embedded CSS with one rule block and one declaration per line. Keep attributes readable and wrap unusually long attribute lists when useful.
- Preserve significant whitespace inside text, `tspan` and other mixed-content elements; formatting must not change labels, geometry, styling or rendering. Keep identical asset copies in exercise starters and solutions byte-identical.

## Demos

- Use numbered descriptive directories in `demo/` with focused `index.html`, `styles.css` and detailed `README.md` presenter instructions (inspect the existing files for exceptions).
- Link via `<Button type="demo" url="http://localhost:5500/css/demo/NN-topic/index.html" />` using the actual path. Keep demo slides short; detailed experiments belong in the README.
- Give each demo distinct learning objectives. Use independent examples within a demo where that separates concepts. Start from a reproducible state rather than a finished answer that prevents experimentation.
- README: explain the concept/problem, learning objectives, files to open and initial state/code; provide ordered experiments with exact changes or replacement snippets, predicted/expected observations, explanations, DevTools steps, discussion questions and reset instructions. Mention assumptions and how to reproduce effects. Use Markdown, not AsciiDoc. If the author's Gradle notes are supplied, inspect them as the documentation-depth reference.

## Exercises and solutions

- Continue the same Task Manager application. Keep matching numbered directories under `exercises/` and `solutions/`.
- The previous reference solution must be the exact next exercise starter: HTML, CSS, images and other application files must be byte-identical (compare paths and bytes/hashes programmatically; exclude task instructions that naturally differ). Do not silently edit earlier steps to simplify a later exercise; explain necessary changes and update all affected handoffs.
- Exercise README: starting situation, learning objectives, detailed numbered tasks, focused snippets, experiments, expected observations, verification and reference solution link. Provide enough support for beginners without handing them an entire finished solution in the instructions. Use a separate runnable reference solution. Restore temporary experiments where needed.
- Exercise slides contain only frontmatter (`layout: exercise`, `exerciseUrl`), heading, short tasks and optional notes; the shared layout owns the illustration and button. Link to the actual README using the repository's `blob/css/css/exercises/.../README.md` convention.
- Verify previous behavior, semantic DOM order, layout at relevant widths, keyboard access and form labels. Keep the exercise achievable using taught concepts or explicitly supplied future-concept previews.

## Quizzes and group activities

- Use existing `Quiz`, `Matching`, `Memory`, `ErrorFinder` and `Button` components. Inspect actual props and data schemas before authoring; use the established `data/` JSON imports with `<script setup lang="ts">` for embedded activities. Do not invent component APIs.
- Question-based external quiz slides use the existing red question mark and `Button type="quiz"`; use actual repository quiz links. Preserve embedded activities' distinct slide formats and appropriate data filenames. Keep activity numbering consecutive across formats when adding activities; audit existing numbers rather than assuming slide order and data filenames always match.
- Test reasoning and misconceptions, not only memorization. Verify all answers, matching pairs, memory pairs and error-finder fixes.
- For group experiments, attendees work in pairs and each group receives an independent question plus its own starter HTML/CSS/README. No group may need another group's results to solve its task. Reveal answer slides in question order, after groups present. The Flexbox group activity is the reference pattern.

## Validation and delivery

Before delivery, run checks appropriate to the changed scope and report actual results:

1. Consecutive slide numbers, manifest order, valid imports and links; exercise and quiz identifiers and component data schemas; parse changed JSON.
2. Image and other asset references (including Markdown, HTML, CSS, Vue and JSON). Search the whole project before deleting an apparently unused asset. Only remove unreferenced assets when within scope.
3. Parse changed SVG XML, render each changed SVG and visually inspect labels, contrast, clipping, overlap, dimensions and code-to-graphic correspondence. XML validity alone is insufficient. Inspect actual slide scale when feasible.
4. Check CSS/HTML behavior and exercise handoffs programmatically; use browser/DevTools tests where feasible. Verify that unrelated files remain unchanged.
5. Run a full Slidev build/render if dependencies and environment allow it. Distinguish standalone SVG rendering and isolated browser tests from full presentation testing. Disclose unavailable tests, existing discrepancies and assumptions; never claim unperformed checks.
6. For substantial changes, create a verified ZIP containing only `css/`, with correct paths, no caches, dependencies, temporary build output or unsolicited reports. For small edits, a ZIP containing only relevant files under their original paths is useful. When files are removed or renamed, explain whether the user must replace the directory or delete obsolete files rather than simply merge. Do not include `shared/` unless requested. Provide rendered previews for changed illustrations when practical. Verify real output files and ZIP integrity before linking.

Do not modify files merely because this guide identifies an improvement. Work iteratively, respect the author's concrete scope and explain material decisions and blockers.
