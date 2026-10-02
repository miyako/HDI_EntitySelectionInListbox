# HDI_EntitySelectionInListbox

![4D](https://img.shields.io/badge/4D-21-blue) ![license](https://img.shields.io/github/license/miyako/HDI_EntitySelectionInListbox)

**How do I display an entity selection in a list box?**

A 4D "How do I" (HDI) example showing how to bind ORDA entity selections to collection list boxes, query them, and style rows dynamically with a meta expression.

## Overview

| | |
|---|---|
| **Topic** | ORDA, list boxes |
| **Minimum version** | 4D v17 (project mode: 4D 21) |
| **Blog post** | [Display an entity selection in a list box](https://blog.4d.com/display-an-entity-selection-in-a-list-box/) |
| **Original download** | [HDI_EntitySelectionInListbox.zip (4D v17)](https://downloads.4d.com/Demos/4D_v17/HDI_EntitySelectionInListbox.zip) |

## Features

- Splash screen followed by a tabbed demo window with explanations, a data model overview and live examples.
- **Meetings** list box: `Form.meetingList` holds an entity selection, shown with a collection list box; columns read related data such as `This.event.Title`.
- **Events** list box: `Form.eventList` is an entity selection with a detail list box for `Form.myEvent.meetings` (the 1-N relation).
- Buttons to reload all entities or run `query()` with placeholders (`Date>:1`, `ID>:1`).
- Row styling with a **meta expression** (`metaSource`) that highlights events without meetings; colours can be changed at runtime.
- Step-by-step picture walkthroughs of the technique.

## Points of interest

- **Entity selection as list box data source.** Assigning a new entity selection to `Form.eventList` refreshes the list box. Re-assigning the same value forces a redraw after changing meta colours.
- **Relations in columns.** `This.meetings.length` and `This.event.Date` use ORDA relation attributes directly in column expressions.
- **Dark mode aware meta colours.** Meta fill colours are read at runtime from hidden reference rectangles whose `fill` is set by `prefers-color-scheme` CSS (`refColor`, `RGBToHex` methods).
- **Startup pattern.** `00_Start` reuses an existing window, otherwise uses `CALL WORKER` and a non-blocking `DIALOG(...; *)`. State lives in `Form` (`Form.currentStep`, `Form.pictInfo`), not in process variables.
- **Localisation.** Strings come from XLIFF files (`en` and `ja`) via `:xliff:` references and `Localized string`.
- **Theming.** `styleSheets.css` handles light/dark colours; `styleSheets_mac.css` sizes buttons for Liquid Glass (27 px) and classic macOS (23 px).
- **Menus.** The Quit item uses the standard `quit` action; no wrapper method.
- **List box defaults.** `truncateMode: none` and `resizingMode: legacy` on all list boxes.

## Structure

```
Project/Sources/
  Methods/        00_Start, loadPicture, refColor, RGBToHex, compiler methods
  Forms/HDI       splash dialog
  Forms/HDI2      tabbed demo with the list boxes
  TableForms/     input/output forms for [INFO], [Event], [Meeting]
  styleSheets*.css, menus.json
Resources/
  en.lproj, ja.lproj   XLIFF files
  *.4ie, *.4si         seed data imported on first start
```

Data model: `INFO` (tab content), `Event` and `Meeting` (one event has many meetings).

## Usage

Open `Project/HDI_EntitySelectionInListbox.4DProject` with 4D 21 or later. Empty tables are filled from `Resources/*.4ie` on first start.

## Origin

Converted from the 4D v17 binary database (`.4DB`) to project mode with 4D 21, then modernised: XLIFF localisation, `var`/`#DECLARE` syntax, standard menu actions, dark mode, Liquid Glass buttons, list box defaults.

## References

- [4D developer documentation](https://developer.4d.com/docs/)
- [CSS in 4D forms](https://developer.4d.com/docs/FormEditor/stylesheets)
- [Menu properties (standard actions)](https://developer.4d.com/docs/Menus/properties)
