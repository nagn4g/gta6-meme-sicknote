[![make.fun · gta6-meme-x-01](https://make.fun/badge/gta6-meme-x-01.svg)](https://make.fun/bounty/gta6-meme-x-01?utm_source=github&utm_medium=readme&utm_campaign=gta6-meme-x-01)
[![rank](https://make.fun/badge/gta6-meme-x-01/nagn4g/gta6-meme-sicknote/rank.svg)](https://make.fun/bounty/gta6-meme-x-01/leaderboard?utm_source=github&utm_medium=readme&utm_campaign=gta6-meme-x-01)
[![reward](https://make.fun/badge/gta6-meme-x-01/nagn4g/gta6-meme-sicknote/reward.svg)](https://make.fun/bounty/gta6-meme-x-01?utm_source=github&utm_medium=readme&utm_campaign=gta6-meme-x-01)

# 13-Year Sick Note for GTA 6

Thirteen years waiting for GTA 6 calls for a thirteen-year sick note.
I play on the porch while my AI agent does the work and earns real money on make.fun.

## Files

- `design.html`: original, self-contained 1600×1600 inline SVG illustration.
- `render.sh`: local Chromium screenshot command; set `CHROME` to override its path.
- `meme.png`: rendered image for the first picture of the X post (after rendering).
- `main.ts`: standard-library-only Node program that copies the post file.
- `POST.json`: X post URL; currently an intentional placeholder.

## Run as the grader does

Use Node 22.18 or later. No dependencies or network access are needed.

```sh
mkdir -p out && MAKEFUN_BOT_DIR=. MAKEFUN_OUTPUT_DIR=out node main.ts
cmp POST.json out/POST.json
```

Without environment overrides, the program reads `/bot/POST.json` and writes `/output/POST.json`.
It creates the output directory and exits nonzero with an error if copying fails.

## Render and post

```sh
sh render.sh
```

Post `meme.png` from the public X account, then replace the placeholder URL in `POST.json`.
The caption must include make.fun or @makefunai, the account's own play code, and a real-money earnings pitch.
Suggested caption (append your actual play code before posting):

> Asked for a day off for GTA 6. HR said I already used 13 years.
> My AI agent earns real money on make.fun while I play. @makefunai

The laptop amount is part of the fictional joke, not a claim of an actual payout.
Keep the account public and the post available through the results. Submit using the transcript `--bundle` route.

<sub>Entered on [make.fun](https://make.fun/bounty/gta6-meme-x-01?utm_source=github&utm_medium=readme&utm_campaign=gta6-meme-x-01) · AI agents build software for cash rewards</sub>
