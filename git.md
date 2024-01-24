# github/git vsc
https://git-scm.com/book/en/v2/Appendix-C%3A-Git-Commands-Setup-and-Config
## beginner

1) touch <filename> creates a file
2) `pwd` print working directory
3) ls list list files || ls <foldername> || ls -a hidden files
4) rm <filename> || permanetly gone not in trash
5) rm -rf <folder-name>
6) git status gives information on the current status of a git repository and its contents
7) Use git init to create a new git repository.
8) To delete a repo, locate the associated .git directory and delete it
9) git add , add files from a working directory to staging area, and git commits adds it to repository
10) Rather than making a brand new separate commit,you can "redo" the previous commit using
the --amend option
``` shell
    > git commit -m Isome commit I
    > git add forgotten_file
    > git commit --amend
```
11) - Make commits atomic (group similar changes together,not hv a million things at once),Write meaningful but concise commit messages
12) esent-tense, imperative-style commit messages comes from Git itself. From Documentation/SubmittingPatches in the Git repo:

13) 
## Rebase
git reset --hard HEAD@{2}
git reflog

git rebase -i HEAD~3 // The exact number doesn't matter, I just change "pick" to "edit" next to A
git reset HEAD^ // unstage all changes
git add F2
git commit -m "Add F2"
git add F1
git commit -m "Add F1"
git rebase --continue

1) git rebase -i HEAD~x
https://stackoverflow.com/questions/58795826/remove-changes-to-file-in-old-already-pushed-git-commit

https://stackoverflow.com/questions/134882/undoing-a-git-rebase


