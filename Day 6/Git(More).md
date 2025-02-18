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


# GIT RESTORE
Sure! The `git restore` command is a versatile tool in Git used to restore working tree files from a specified source. It can be particularly useful for undoing changes or reverting files to a previous state. Here are some key aspects of `git restore`:

### Basic Usage
- **Restoring Files**: You can restore files in your working directory to their last committed state using:
  ```sh
  git restore <filename>
  ```
  This command discards any local changes in the specified file.

- **Unstaging Files**: If you've added changes to the staging area but want to unstage them, you can use:
  ```sh
  git restore --staged <filename>
  ```
  This removes the file from the staging area but keeps the changes in your working directory.

- **Restoring from a Specific Source**: You can restore a file to a specific revision using the `--source` option:
  ```sh
  git restore --source <commit> <filename>
  ```
  This restores the file to the state it was in at the specified commit.

### Interactive Mode
- **Selective Restoration**: The `--patch` option allows you to interactively select chunks of changes to restore:
  ```sh
  git restore --patch <filename>
  ```
  This mode steps through each chunk of changes and asks if you want to restore it, providing fine-grained control over the restoration process.

### Options
- **--worktree**: Restores the working tree files.
- **--staged**: Restores the index.
- **--source**: Specifies the source tree (commit, branch, or tag) to restore from.
- **--quiet**: Suppresses feedback messages.

### Examples
- **Unstaging a File**:
  ```sh
  git restore --staged index.html
  ```
- **Discarding Local Changes**:
  ```sh
  git restore index.html
  ```
- **Restoring a Specific Revision**:
  ```sh
  git restore --source 7173808e index.html
  ```

# GIT RESET
### Git Reset Overview
The `git reset` command is a powerful tool used to undo changes in a Git repository. It can modify the commit history and the state of the working directory and staging area. There are three primary forms of `git reset`:

1. **--soft**
2. **--mixed**
3. **--hard**

### The Three Trees of Git
To understand `git reset`, it's essential to know about Git's three internal state management mechanisms, often referred to as the "three trees":
- **HEAD**: Points to the current commit.
- **Index (Staging Area)**: Tracks changes that will be included in the next commit.
- **Working Directory**: Contains the actual files and directories on your filesystem.

### Git Reset Modes
1. **--soft**
   - Moves the `HEAD` to the specified commit.
   - Does not change the index or working directory.
   - Changes remain staged for the next commit.
   - Example: `git reset --soft HEAD~1` (moves `HEAD` back by one commit, changes are left staged).

2. **--mixed** (default)
   - Moves the `HEAD` to the specified commit.
   - Resets the index but not the working directory.
   - Changes are preserved but not staged for commit.
   - Example: `git reset HEAD~1` (moves `HEAD` back by one commit, changes are left in the working directory).

3. **--hard**
   - Moves the `HEAD` to the specified commit.
   - Resets the index and working directory to match the specified commit.
   - Discards all changes in the working directory and index.
   - Example: `git reset --hard HEAD~1` (resets the index and working directory to the previous commit, discarding all changes).

### Additional Options
- **--merge**: Resets the index and updates files in the working directory that are different between the specified commit and `HEAD`, but keeps those which have local changes.
- **--keep**: Resets the index and updates files in the working directory that are different between the specified commit and `HEAD`, but keeps local changes that are not in conflict.

### Practical Examples
- **Unstage a file**: `git reset HEAD <file>` (removes the file from the staging area).
- **Reset to a specific commit**: `git reset --hard <commit>` (resets the repository to the specified commit, discarding all changes).

### Summary of Commands
1. `git reset HEAD`: Unstages files.
2. `git reset --soft HEAD~1`: Moves `HEAD` back by one commit, changes are left staged.
3. `git reset HEAD~1`: Moves `HEAD` back by one commit, changes are left in the working directory.
4. `git reset --hard HEAD~1`: Resets index and working directory to the previous commit, discards all changes.
5. `git reset --hard origin/main`: Resets the local branch to match the remote main branch

# GIT REVERT
### Git Revert Overview
The `git revert` command is used to undo changes by creating a new commit that reverses the effects of a previous commit. Unlike `git reset`, which can alter the commit history, `git revert` is a safe way to undo changes without rewriting history.

### How It Works
When you run `git revert`, Git creates a new commit that applies the inverse of the changes made in the specified commit. This means the original commit remains in the history, and the new commit effectively cancels out its changes.

### Basic Syntax
```bash
git revert <commit>
```
- `<commit>`: The commit hash of the commit you want to revert.

### Options
- **`-n` or `--no-commit`**: Applies the changes to the working directory and index but does not create a commit. This allows you to review and modify the changes before committing.
- **`-m <parent-number>`**: Used to revert a merge commit. Specifies the parent number (starting from 1) to use as the mainline.
- **`--edit`**: Opens the commit message editor to allow you to edit the commit message for the revert commit.
- **`--no-edit`**: Uses the default commit message without opening the editor.
- **`-s` or `--signoff`**: Adds a Signed-off-by line at the end of the commit message.

### Practical Examples
1. **Revert a Single Commit**:
   ```bash
   git revert <commit>
   ```
   This creates a new commit that undoes the changes made by the specified commit.

2. **Revert Multiple Commits**:
   ```bash
   git revert <commit1> <commit2>
   ```
   This creates separate revert commits for each specified commit.

3. **Revert a Merge Commit**:
   ```bash
   git revert -m 1 <merge-commit>
   ```
   This reverts a merge commit by specifying the parent number to use as the mainline.

### Summary
- **Safe Undo**: `git revert` is a safe way to undo changes without altering the commit history.
- **New Commit**: It creates a new commit that reverses the changes of a previous commit.
- **Options**: Various options allow you to customize the revert process, such as editing the commit message or reverting merge commits.


# GIT LOG
### Git Log Overview
The `git log` command is used to display the commit history of a Git repository. It shows a list of commits in reverse chronological order, providing detailed information about each commit.

### Basic Syntax
```bash
git log [options] [<revision-range>] [--] [<path>...]
```
- **`<revision-range>`**: Specifies the range of commits to display.
- **`<path>`**: Limits the log to commits that affect the specified paths.

### Common Options
- **`--oneline`**: Displays each commit on a single line.
- **`--graph`**: Shows a graphical representation of the commit history.
- **`--decorate`**: Adds branch names and tags to the commit messages.
- **`--stat`**: Shows the files that were changed and the number of lines added or removed.
- **`-p` or `--patch`**: Displays the full patch (diff) for each commit.
- **`--author=<author>`**: Filters commits by the specified author.
- **`--since=<date>` and `--until=<date>`**: Filters commits within the specified date range.
- **`-n <number>`**: Limits the number of commits to display.

### Practical Examples
1. **Basic Log**:
   ```bash
   git log
   ```
   Displays the commit history.

2. **One-line Log**:
   ```bash
   git log --oneline
   ```
   Shows each commit on a single line.

3. **Graphical Log**:
   ```bash
   git log --graph --oneline --decorate
   ```
   Displays a graphical representation of the commit history with branch names and tags.

4. **Log with File Changes**:
   ```bash
   git log --stat
   ```
   Shows the files that were changed and the number of lines added or removed.

5. **Log with Full Patch**:
   ```bash
   git log -p
   ```
   Displays the full patch (diff) for each commit.

6. **Filter by Author**:
   ```bash
   git log --author="Author Name"
   ```
   Shows commits by the specified author.

7. **Filter by Date Range**:
   ```bash
   git log --since="2023-01-01" --until="2023-12-31"
   ```
   Displays commits within the specified date range.

8. **Limit Number of Commits**:
   ```bash
   git log -n 5
   ```
   Shows the last 5 commits.

### Summary
- **Detailed History**: `git log` provides a detailed history of commits.
- **Flexible Options**: Various options allow you to customize the output to suit your needs.
- **Filtering**: You can filter commits by author, date range, and other criteria.

# GIT SHOW
### Git Show Overview
The `git show` command is used to display various types of Git objects, such as commits, trees, tags, and blobs. For commits, it shows the commit message and the changes introduced by the commit.

### Basic Syntax
```bash
git show [options] [<object>...]
```
- **`<object>`**: The name of the object to show (defaults to `HEAD`).

### Common Options
- **`--pretty[=<format>]`**: Pretty-print the commit logs in a specified format. Formats include `oneline`, `short`, `medium`, `full`, `fuller`, `reference`, `email`, `raw`, `format:<string>`, and `tformat:<string>`.
- **`--abbrev-commit`**: Show only a prefix of the commit hash.
- **`--no-abbrev-commit`**: Show the full commit hash.
- **`--oneline`**: A shorthand for `--pretty=oneline --abbrev-commit`.
- **`--stat`**: Show the files that were changed and the number of lines added or removed.
- **`-p` or `--patch`**: Show the full patch (diff) for the commit.
- **`--name-only`**: Show only the names of the affected files.
- **`--name-status`**: Show the names and status of the affected files.
- **`--format=<format>`**: Format the output according to the specified format.
- **`--graph`**: Show a graphical representation of the commit history.

### Practical Examples
1. **Show the Latest Commit**:
   ```bash
   git show
   ```
   Displays the details of the latest commit.

2. **Show a Specific Commit**:
   ```bash
   git show <commit>
   ```
   Displays the details of the specified commit.

3. **Show Commit with Pretty Format**:
   ```bash
   git show --pretty=short <commit>
   ```
   Displays the commit with a short format.

4. **Show Commit with Full Patch**:
   ```bash
   git show -p <commit>
   ```
   Displays the full patch for the specified commit.

5. **Show Only File Names**:
   ```bash
   git show --name-only <commit>
   ```
   Displays only the names of the files changed in the specified commit.

6. **Show File Names and Status**:
   ```bash
   git show --name-status <commit>
   ```
   Displays the names and status of the files changed in the specified commit.

### Summary
- **Detailed View**: `git show` provides a detailed view of Git objects, especially commits.
- **Flexible Options**: Various options allow you to customize the output to suit your needs.
- **Patch Display**: You can view the full patch (diff) for commits.

# GIT BRANCH
### Git Branching Overview
Branches in Git allow you to work on different features, bug fixes, or experiments independently from the main codebase. This enables parallel development and helps keep the main branch stable.

### Basic Branching Commands
1. **Create a New Branch**:
   ```bash
   git branch <branch-name>
   ```
   Creates a new branch named `<branch-name>`.

2. **Switch to a Branch**:
   ```bash
   git checkout <branch-name>
   ```
   Switches to the specified branch.

3. **Create and Switch to a New Branch**:
   ```bash
   git checkout -b <branch-name>
   ```
   Creates a new branch and switches to it.

4. **List All Branches**:
   ```bash
   git branch
   ```
   Lists all branches in the repository. The current branch is highlighted with an asterisk (*).

5. **Delete a Branch**:
   ```bash
   git branch -d <branch-name>
   ```
   Deletes the specified branch. Use `-D` to force delete a branch that hasn't been merged.

### Merging Branches
Merging is the process of integrating changes from one branch into another.

1. **Merge a Branch into the Current Branch**:
   ```bash
   git merge <branch-name>
   ```
   Merges the specified branch into the current branch.

### Rebasing Branches
Rebasing is another way to integrate changes from one branch into another. It re-applies commits on top of another base commit.

1. **Rebase the Current Branch onto Another Branch**:
   ```bash
   git rebase <branch-name>
   ```
   Re-applies commits from the current branch onto the specified branch.

### Practical Examples
1. **Create and Switch to a New Branch**:
   ```bash
   git checkout -b feature-branch
   ```
   Creates a new branch named `feature-branch` and switches to it.

2. **Merge a Feature Branch into Main**:
   ```bash
   git checkout main
   git merge feature-branch
   ```
   Switches to the `main` branch and merges `feature-branch` into it.

3. **Rebase a Feature Branch onto Main**:
   ```bash
   git checkout feature-branch
   git rebase main
   ```
   Re-applies commits from `feature-branch` onto the `main` branch.

### Summary
- **Branches**: Allow parallel development and keep the main codebase stable.
- **Merging**: Integrates changes from one branch into another.
- **Rebasing**: Re-applies commits on top of another base commit.