import { copyFileSync, mkdirSync } from 'node:fs';
import { join } from 'node:path';

try {
  const source = process.env.MAKEFUN_BOT_DIR || '/bot';
  const output = process.env.MAKEFUN_OUTPUT_DIR || '/output';
  mkdirSync(output, { recursive: true });
  copyFileSync(join(source, 'POST.json'), join(output, 'POST.json'));
} catch (error) {
  const detail = error instanceof Error ? error.message : String(error);
  console.error(`POST.json copy failed: ${detail}`);
  process.exitCode = 1;
}
