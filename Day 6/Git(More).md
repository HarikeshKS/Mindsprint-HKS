# GIT DIFF

### What is `git diff`?
`git diff` shows the differences between commits, the working directory, and the staging area. It helps you see what changes have been made before you commit them.

### Common Uses
1. **Comparing Working Directory and Staging Area**:
   ```bash
   git diff
   ```
   This command shows changes in the working directory that are not yet staged for the next commit.

2. **Comparing Staging Area and Last Commit**:
   ```bash
   git diff --cached
   ```
   OR
   ```bash
   git diff --staged
   ```
   This shows changes that are staged for the next commit but not yet committed.

3. **Comparing Two Commits**:
   ```bash
   git diff <commit1> <commit2>
   ```
   This shows differences between two specific commits.

4. **Comparing a Commit and the Working Directory**:
   ```bash
   git diff <commit>
   ```
   This shows changes in the working directory compared to a specific commit.

### Example
Let's say you have a file `example.txt` and you made some changes to it. Before staging these changes, you can use `git diff` to see what has been modified:
```bash
git diff example.txt
```
This will show you the line-by-line differences between the current state of `example.txt` and the last committed version.

### Output Explanation
The output of `git diff` typically includes:
- **File names**: Indicating which files have changes.
- **Line numbers**: Showing where changes occur.
- **Added/Removed lines**: Lines prefixed with `+` are additions, and lines prefixed with `-` are deletions.

### Advanced Options
- **Colorized Output**: Use `git diff --color` to get a colorized output for better readability.
- **Ignoring Whitespace**: Use `git diff -w` to ignore whitespace changes.

### Practical Tips
- Regularly use `git diff` to review changes before committing.
- Combine with other Git commands like `git add` and `git commit` for a smooth workflow.