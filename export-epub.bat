@echo off
REM Concatenate all markdown files in order into full.md
cd %~dp0
type NUL > full.md
type "metadata.yml" >> full.md
type "cover.md" >> full.md
type "license.md" >> full.md
type "toc.md" >> full.md
type "glossary.md" >> full.md
type "index.md" >> full.md
type "figures.md" >> full.md
type "backcover.md" >> full.md
type "chapters\01-what-is-a-computer\01-01-definition.md" >> full.md
type "chapters\01-what-is-a-computer\01-02-history.md" >> full.md
type "chapters\01-what-is-a-computer\01-03-digital-vs-analog.md" >> full.md
type "chapters\02-hardware\02-01-cpu.md" >> full.md
type "chapters\02-hardware\02-02-ram.md" >> full.md
type "chapters\02-hardware\02-03-storage.md" >> full.md
type "chapters\02-hardware\02-04-input-output.md" >> full.md
type "chapters\03-software\03-01-what-is-software.md" >> full.md
type "chapters\03-software\03-02-types-of-software.md" >> full.md
type "chapters\04-operating-systems\04-01-what-is-an-os.md" >> full.md
type "chapters\04-operating-systems\04-02-user-interfaces.md" >> full.md
type "chapters\04-operating-systems\04-03-commands-and-gestures.md" >> full.md
type "chapters\05-files-and-folders\05-01-files.md" >> full.md
type "chapters\05-files-and-folders\05-02-folders.md" >> full.md
type "chapters\05-files-and-folders\05-03-saving-and-searching.md" >> full.md
type "chapters\06-digital-concepts\06-01-bits-and-bytes.md" >> full.md
type "chapters\06-digital-concepts\06-02-data-vs-program.md" >> full.md
type "chapters\07-review\07-01-summary.md" >> full.md
type "chapters\07-review\07-02-checklist.md" >> full.md
REM Generate EPUB
pandoc metadata.yml full.md -o book.epub
echo EPUB created as book.epub
pause
