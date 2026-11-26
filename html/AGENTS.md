# AGENTS.md — HTML Workshop

## Scope and precedence

- Applies to the `html/` workshop in the `webdevelopment` repository; share layouts and reusable components from `shared/`.
- Read this file, the actual uploaded archive and `slides.md` **before** proposing edits. The latest user-uploaded revision takes precedence over older context or generated files.
- Follow the author's most recent explicit request over defaults here. Preserve every unrelated file and user edit. Do not modify `css/` or `shared/` without explicit permission.
- These are editing and teaching rules, **not** a progress report. Never infer that a part, demo, exercise or slide exists from this file; inspect actual sources.

## Teaching and content

- Beginner-friendly, accurate, modern HTML; explain what browser parsing, semantics, forms, accessibility and rendering actually do.
- Build the concept in order: problem → mechanism → focused demonstration → prediction/observation → practical exercise → key takeaway.
- HTML is responsible for structure and meaning; distinguish it from CSS presentation and JavaScript behavior. Prefer **native semantic HTML** over unnecessary ARIA or script-generated widgets.
- Preserve valid element nesting, labels, accessible names, keyboard access, logical document order and useful alternative text. Do not make absolute compatibility claims when browser/platform behavior varies.
- Exercises evolve one persistent **Task Manager** application. Keep work suitable for the concepts already taught; provide future behavior only as explicit starter scaffolding.
- Avoid repetitive slide definitions, overly detailed lists, and decorative diagrams. Use focused examples and meaningful technical illustrations.

## Slide architecture

- `slides.md` is the authoritative Slidev slide manifest; slides live in `slides/` and use consecutive two-digit numeric filename prefixes (e.g. `19-quiz-01.md`).
- Insert or remove slides by renumbering affected files and updating every `src` and link. Never use intermediate suffixes such as `19a`.
- Each part starts with `section`, then `learningOutcomes`, and ends with `keyTakeaways`. Use the actual shared layouts rather than inventing replacement scaffolding.
- Use `pageBar` for normal explanatory material and `pageBarTwoCols` for directly comparable examples; inspect slot APIs before using them. Normal content slides use `class: content-offset` where appropriate.
- Learning-outcome entries continue the layout's “I will ...” sentence: use lowercase action phrases and do not repeat “I will” in each item. Key takeaways contain concise, transferable principles.
- Use proper `html`, `css` or `javascript` fenced code blocks with readable formatting and minimal distractions. Keep source, slide text, illustrations and code output consistent.
- Keep slide content succinct. Do not reduce font sizes merely to fit excessive content.

## Presenter notes and demo instructions

- Notes go into trailing `<!-- ... -->` comments in the slide Markdown.
- **No prose paragraphs or scripts.** Presenter notes are short bullets read from a second monitor while presenting.
- Hierarchy: level 1 is the slide/topic; level 2 is **what to do, show or ask**; level 3 is the substep, predicted observation or concise **Why**.
- Prefer prompts such as `- Open DevTools ...`, `- Ask: ...`, `  - Observe: ...`, `  - Why: ...`. Keep information technically accurate without repeating the slide verbatim.
- Demo READMEs use the same structure as the author's supplied `gradle-basics(3).adoc`: **topic → action → substeps/why**. Author in Markdown with short nested bullets and compact code snippets; no essay introductions. Include a reproducible starting point, exact actions, observations and reset steps.
- Demo URLs must resolve under `http://localhost:5500/html/...` when served from the repository root. Link to the real demo source, not a fictional endpoint.

## Quizzes and exercises

- External quizzes are stored as **`quiz/quiz-YY.md`** and **`quiz/quiz-YY-answers.md`**, with the red question mark and `Button type="quiz"` on the corresponding slide (`NN-quiz-YY.md`).
- Preserve the author's precise question wording; do not append “work in pairs”, extra questions or detailed answers to the question sheet unless asked. Keep solution explanations accurate and separated.
- Use matching numbered Task Manager directories under `exercises/` and `solutions/`. Preserve the reference solution and the subsequent starter as intended and compare matching files before editing.
- **Intentional exception:** HTML Exercise 04 starter already includes a priority radio group; preserve it. Do not “correct” it to match Solution 03 just because their file lists differ.
- Exercise slides use the real `exercise` layout and repository `exerciseUrl` paths; the exercise README gives objectives, tasks, verification and the solution link. Do not implement the full solution in the starter instructions.
- For activities relying on `Quiz`, `Matching`, `Memory` or other shared components, inspect actual component props and any JSON schemas; never invent APIs.

## Assets, shared code and project safety

- Put local visual assets in `public/images/` with descriptive kebab-case names. Technical SVGs must be editable, readable multiline XML with correct proportions, labels and accessible descriptions; inspect rendering, not XML parse alone.
- Reuse shared layouts and controls from `shared/`. Do not duplicate or edit their implementations without permission.
- Preserve user-controlled image names, references and non-HTML asset files. Search all links before removing or renaming an asset.
- Keep semantic HTML examples realistic and avoid decorative ARIA. A native `<button>` already has button semantics; accessible names need reliable visible labels or appropriate techniques.

## Validation and delivery

1. Verify slide numbering, manifest ordering, frontmatter, quiz/exercise identifiers, relative assets and linked pages.
2. Compare modified file paths and bytes against the original archive; change nothing unrelated. Keep intentional exercise starter scaffolding.
3. Validate edited HTML markup and browser behavior when practical: keyboard order, labels, form submission, viewport/zoom and meaningful DOM semantics.
4. Review all changed notes and demo READMEs against the three-level, glanceable bullet rule.
5. Render slides or run a Slidev build if dependencies support it; explicitly disclose any unavailable full build or visual inspection.
6. Deliver a verified ZIP retaining the original top-level `html/` tree. Do not include caches, dependencies or build products. Deliver `shared/` only when explicitly requested. Provide an exact list of modified or added files and report pre-existing exceptions honestly.

Do not change material purely for stylistic preference outside the user's requested scope.
