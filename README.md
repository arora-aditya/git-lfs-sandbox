# Investigating git LFS

## Question:
> Is there a way to delete a file from git LFS without messing up the repo?

# MASTER LOG:

```
commit 22231376fe858d5a8d98c15c3dcc4175a95bfac7
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Sun Jan 27 14:39:37 2019 -0500

    update 2 files, add 1 file

commit 164236240a9e66fcf7e955fd13d1f03bd40cedc0
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Fri Jan 25 14:35:08 2019 -0500

    update 1 file, add 1 file

commit 256b0fc6bb1245609fc1d35ec149a89b15cfd020
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Thu Jan 24 14:28:37 2019 -0500

    update random files

commit 29f3c446d54bb163127cb41756bb82e8c08d7619
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Wed Jan 23 14:18:23 2019 -0500

    add 2 new files, modify one existing one

commit 24332c1514d00e247883db624e43a16165d0043f
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Mon Jan 21 14:12:13 2019 -0500

    add 2 files to git LFS

    also add Makefile
```


# NEW_NEW_FILE LOGS:
```
commit 22231376fe858d5a8d98c15c3dcc4175a95bfac7 (HEAD -> new_new_file, origin/new_new_file, origin/master, master)
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Sun Jan 27 14:39:37 2019 -0500

    update 2 files, add 1 file

commit 164236240a9e66fcf7e955fd13d1f03bd40cedc0 (origin/new_file, new_file)
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Fri Jan 25 14:35:08 2019 -0500

    update 1 file, add 1 file

commit 256b0fc6bb1245609fc1d35ec149a89b15cfd020
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Thu Jan 24 14:28:37 2019 -0500

    update random files

commit 29f3c446d54bb163127cb41756bb82e8c08d7619
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Wed Jan 23 14:18:23 2019 -0500

    add 2 new files, modify one existing one

commit 24332c1514d00e247883db624e43a16165d0043f
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Mon Jan 21 14:12:13 2019 -0500

    add 2 files to git LFS

    also add Makefile
```

# NEW_FILE LOGS:
```
commit 164236240a9e66fcf7e955fd13d1f03bd40cedc0 (HEAD -> new_file, origin/new_file)
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Fri Jan 25 14:35:08 2019 -0500

    update 1 file, add 1 file

commit 256b0fc6bb1245609fc1d35ec149a89b15cfd020
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Thu Jan 24 14:28:37 2019 -0500

    update random files

commit 29f3c446d54bb163127cb41756bb82e8c08d7619
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Wed Jan 23 14:18:23 2019 -0500

    add 2 new files, modify one existing one

commit 24332c1514d00e247883db624e43a16165d0043f
Author: arora-aditya <10962267+arora-aditya@users.noreply.github.com>
Date:   Mon Jan 21 14:12:13 2019 -0500

    add 2 files to git LFS

    also add Makefile
```

# DELETING FILE:
`java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-12.12.48.txt`

## OUTPUT OF ABOVE:
```
Adityas-MacBook-Pro:git-lfs-clones arora-aditya$ java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-12.12.48.txt git-lfs-sandbox.git/

Using repo : /Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git

Found 10 objects to protect
Found 4 commit-pointing refs : HEAD, refs/heads/master, refs/heads/new_file, refs/heads/new_new_file

Protected commits
-----------------

These are your protected commits, and so their contents will NOT be altered:

 * commit 22231376 (protected by 'HEAD') - contains 1 dirty file :
	- random_gen2019.04.26-12.12.48.txt (128 B)

WARNING: The dirty content above may be removed from other commits, but as
the *protected* commits still use it, it will STILL exist in your repository.

Details of protected dirty content have been recorded here :

/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/14-57-56/protected-dirt/

If you *really* want this content gone, make a manual commit that removes it,
and then run the BFG on a fresh copy of your repo.


Cleaning
--------

Found 5 commits
Cleaning commits:       100% (5/5)
Cleaning commits completed in 57 ms.

Updating 3 Refs
---------------

	Ref                       Before     After   
	---------------------------------------------
	refs/heads/master       | 22231376 | 2ea3759a
	refs/heads/new_file     | 16423624 | 6c046d0b
	refs/heads/new_new_file | 22231376 | 2ea3759a

Updating references:    100% (3/3)
...Ref update completed in 15 ms.

Commit Tree-Dirt History
------------------------

	Earliest      Latest
	|                  |
	 D   D   D   D   m  

	D = dirty commits (file tree fixed)
	m = modified commits (commit message or parents changed)
	. = clean commits (no changes to file tree)

	                        Before     After   
	-------------------------------------------
	First modified commit | 24332c15 | 5a3c574a
	Last dirty commit     | 16423624 | 6c046d0b

Deleted files
-------------

	Filename                            Git id                                              
	----------------------------------------------------------------------------------------
	random_gen2019.04.26-12.12.48.txt | 361dc89b (128 B), 9e088c8b (128 B), a76f1fbe (128 B)


In total, 9 object ids were changed. Full details are logged here:

	/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/14-57-56

BFG run is complete! When ready, run: git reflog expire --expire=now --all && git gc --prune=now --aggressive


--
You can rewrite history in Git - don't let Trump do it for real!
Trump's administration has lied consistently, to make people give up on ever
being told the truth. Don't give up: https://github.com/bkeepers/stop-trump
--
```

### git push after deleted
```
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ git branch
* master
  new_file
  new_new_file
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ git push
Enumerating objects: 25, done.
Counting objects: 100% (25/25), done.
Delta compression using up to 12 threads
Compressing objects: 100% (19/19), done.
Writing objects: 100% (25/25), 3.39 KiB | 3.39 MiB/s, done.
Total 25 (delta 5), reused 25 (delta 5)
remote: Resolving deltas: 100% (5/5), done.
To github.com:arora-aditya/git-lfs-sandbox.git
 + 2223137...2ea3759 master -> master (forced update)
 + 1642362...6c046d0 new_file -> new_file (forced update)
 + 2223137...2ea3759 new_new_file -> new_new_file (forced update)
```

# DELETING 2nd FILE
`java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-14.33.32.txt`

## OUTPUT OF ABOVE
```
java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-14.33.32.txt

Using repo : /Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git

Found 10 objects to protect
Found 4 commit-pointing refs : HEAD, refs/heads/master, refs/heads/new_file, refs/heads/new_new_file

Protected commits
-----------------

These are your protected commits, and so their contents will NOT be altered:

 * commit 2ea3759a (protected by 'HEAD') - contains 1 dirty file :
	- random_gen2019.04.26-14.33.32.txt (128 B)

WARNING: The dirty content above may be removed from other commits, but as
the *protected* commits still use it, it will STILL exist in your repository.

Details of protected dirty content have been recorded here :

/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/15-43-11/protected-dirt/

If you *really* want this content gone, make a manual commit that removes it,
and then run the BFG on a fresh copy of your repo.


Cleaning
--------

Found 5 commits
Cleaning commits:       100% (5/5)
Cleaning commits completed in 53 ms.

Updating 3 Refs
---------------

	Ref                       Before     After   
	---------------------------------------------
	refs/heads/master       | 2ea3759a | 70620fca
	refs/heads/new_file     | 6c046d0b | 8db80604
	refs/heads/new_new_file | 2ea3759a | 70620fca

Updating references:    100% (3/3)
...Ref update completed in 15 ms.

Commit Tree-Dirt History
------------------------

	Earliest      Latest
	|                  |
	 .   .   .   D   m  

	D = dirty commits (file tree fixed)
	m = modified commits (commit message or parents changed)
	. = clean commits (no changes to file tree)

	                        Before     After   
	-------------------------------------------
	First modified commit | 6c046d0b | 8db80604
	Last dirty commit     | 6c046d0b | 8db80604

Deleted files
-------------

	Filename                            Git id          
	----------------------------------------------------
	random_gen2019.04.26-14.33.32.txt | 1f755e8e (128 B)


In total, 3 object ids were changed. Full details are logged here:

	/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/15-43-11

BFG run is complete! When ready, run: git reflog expire --expire=now --all && git gc --prune=now --aggressive


--
You can rewrite history in Git - don't let Trump do it for real!
Trump's administration has lied consistently, to make people give up on ever
being told the truth. Don't give up: https://www.aclu.org/
--
```

# DELETING 3rd FILE
`java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-14.15.18.txt git-lfs-sandbox.git`

## OUTPUT OF ABOVE
```
Found 10 objects to protect
Found 4 commit-pointing refs : HEAD, refs/heads/master, refs/heads/new_file, refs/heads/new_new_file

Protected commits
-----------------

These are your protected commits, and so their contents will NOT be altered:

 * commit 70620fca (protected by 'HEAD') - contains 1 dirty file :
	- random_gen2019.04.26-14.15.18.txt (128 B)

WARNING: The dirty content above may be removed from other commits, but as
the *protected* commits still use it, it will STILL exist in your repository.

Details of protected dirty content have been recorded here :

/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/15-46-59/protected-dirt/

If you *really* want this content gone, make a manual commit that removes it,
and then run the BFG on a fresh copy of your repo.


Cleaning
--------

Found 5 commits
Cleaning commits:       100% (5/5)
Cleaning commits completed in 39 ms.

Updating 3 Refs
---------------

	Ref                       Before     After   
	---------------------------------------------
	refs/heads/master       | 70620fca | 3d94f1a6
	refs/heads/new_file     | 8db80604 | 9b4de90a
	refs/heads/new_new_file | 70620fca | 3d94f1a6

Updating references:    100% (3/3)
...Ref update completed in 15 ms.

Commit Tree-Dirt History
------------------------

	Earliest      Latest
	|                  |
	 .   D   D   D   m  

	D = dirty commits (file tree fixed)
	m = modified commits (commit message or parents changed)
	. = clean commits (no changes to file tree)

	                        Before     After   
	-------------------------------------------
	First modified commit | 5c7ea0df | bcb794de
	Last dirty commit     | 8db80604 | 9b4de90a

Deleted files
-------------

	Filename                            Git id          
	----------------------------------------------------
	random_gen2019.04.26-14.15.18.txt | 2fbe2d13 (128 B)


In total, 6 object ids were changed. Full details are logged here:

	/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/15-46-59

BFG run is complete! When ready, run: git reflog expire --expire=now --all && git gc --prune=now --aggressive


--
You can rewrite history in Git - don't let Trump do it for real!
Trump's administration has lied consistently, to make people give up on ever
being told the truth. Don't give up: https://www.aclu.org/
--

```


# Delete File from `master`
```
Adityas-MacBook-Pro:third-copy-after-deletes arora-aditya$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	deleted:    random_gen2019.04.26-12.12.48.txt

Adityas-MacBook-Pro:third-copy-after-deletes arora-aditya$ git commit -m 'deleted the file'
[master 00e766e] deleted the file
 1 file changed, 3 deletions(-)
 delete mode 100644 random_gen2019.04.26-12.12.48.txt
Adityas-MacBook-Pro:third-copy-after-deletes arora-aditya$ git push
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 12 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 241 bytes | 241.00 KiB/s, done.
Total 2 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:arora-aditya/git-lfs-sandbox.git
   3d94f1a..00e766e  master -> master
```

## Run BFG on deleted file
`java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-12.12.48.txt
`
### Output
```
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-12.12.48.txt

Using repo : /Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git

Found 10 objects to protect
Found 4 commit-pointing refs : HEAD, refs/heads/master, refs/heads/new_file, refs/heads/new_new_file

Protected commits
-----------------

These are your protected commits, and so their contents will NOT be altered:

 * commit 3d94f1a6 (protected by 'HEAD') - contains 1 dirty file :
	- random_gen2019.04.26-12.12.48.txt (128 B)

WARNING: The dirty content above may be removed from other commits, but as
the *protected* commits still use it, it will STILL exist in your repository.

Details of protected dirty content have been recorded here :

/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/15-53-59/protected-dirt/

If you *really* want this content gone, make a manual commit that removes it,
and then run the BFG on a fresh copy of your repo.


Cleaning
--------

Found 5 commits
Cleaning commits:       100% (5/5)
Cleaning commits completed in 46 ms.

BFG aborting: No refs to update - no dirty commits found??



--
You can rewrite history in Git - don't let Trump do it for real!
Trump's administration has lied consistently, to make people give up on ever
being told the truth. Don't give up: https://www.aclu.org/
--


Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ git reflog expire --expire=now --all && git gc --prune=now --aggressive
Enumerating objects: 23, done.
Counting objects: 100% (23/23), done.
Delta compression using up to 12 threads
Compressing objects: 100% (22/22), done.
Writing objects: 100% (23/23), done.
Total 23 (delta 5), reused 15 (delta 0)
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ git push
Total 0 (delta 0), reused 0 (delta 0)
To github.com:arora-aditya/git-lfs-sandbox.git
 + 00e766e...3d94f1a master -> master (forced update)
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-12.12.48.txt

Using repo : /Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git

Found 10 objects to protect
Found 4 commit-pointing refs : HEAD, refs/heads/master, refs/heads/new_file, refs/heads/new_new_file

Protected commits
-----------------

These are your protected commits, and so their contents will NOT be altered:

 * commit 3d94f1a6 (protected by 'HEAD') - contains 1 dirty file :
	- random_gen2019.04.26-12.12.48.txt (128 B)

WARNING: The dirty content above may be removed from other commits, but as
the *protected* commits still use it, it will STILL exist in your repository.

Details of protected dirty content have been recorded here :

/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/15-55-04/protected-dirt/

If you *really* want this content gone, make a manual commit that removes it,
and then run the BFG on a fresh copy of your repo.


Cleaning
--------

Found 5 commits
Cleaning commits:       100% (5/5)
Cleaning commits completed in 47 ms.

BFG aborting: No refs to update - no dirty commits found??



--
You can rewrite history in Git - don't let Trump do it for real!
Trump's administration has lied consistently, to make people give up on ever
being told the truth. Don't give up: https://www.rescue.org/topic/refugees-america
--


Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ git push
Everything up-to-date
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ cd
```

# Running BFG without protection
```
Adityas-MacBook-Pro:git-lfs-sandbox.git arora-aditya$ java -jar /Users/arora-aditya/Downloads/bfg-1.13.0.jar --delete-files random_gen2019.04.26-12.12.48.txt --no-blob-protection

Using repo : /Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git

Found 0 objects to protect
Found 4 commit-pointing refs : HEAD, refs/heads/master, refs/heads/new_file, refs/heads/new_new_file

Protected commits
-----------------

You're not protecting any commits, which means the BFG will modify the contents of even *current* commits.

This isn't recommended - ideally, if your current commits are dirty, you should fix up your working copy and commit that, check that your build still works, and only then run the BFG to clean up your history.

Cleaning
--------

Found 5 commits
Cleaning commits:       100% (5/5)
Cleaning commits completed in 102 ms.

Updating 2 Refs
---------------

	Ref                       Before     After   
	---------------------------------------------
	refs/heads/master       | 3d94f1a6 | 523f417f
	refs/heads/new_new_file | 3d94f1a6 | 523f417f

Updating references:    100% (2/2)
...Ref update completed in 16 ms.

Commit Tree-Dirt History
------------------------

	Earliest      Latest
	|                  |
	 .   .   .   .   D  

	D = dirty commits (file tree fixed)
	m = modified commits (commit message or parents changed)
	. = clean commits (no changes to file tree)

	                        Before     After   
	-------------------------------------------
	First modified commit | 3d94f1a6 | 523f417f
	Last dirty commit     | 3d94f1a6 | 523f417f

Deleted files
-------------

	Filename                            Git id          
	----------------------------------------------------
	random_gen2019.04.26-12.12.48.txt | 9e088c8b (128 B)


In total, 2 object ids were changed. Full details are logged here:

	/Users/arora-aditya/Desktop/personal/git-lfs-clones/git-lfs-sandbox.git.bfg-report/2019-04-26/16-04-41

BFG run is complete! When ready, run: git reflog expire --expire=now --all && git gc --prune=now --aggressive


--
You can rewrite history in Git - don't let Trump do it for real!
Trump's administration has lied consistently, to make people give up on ever
being told the truth. Don't give up: https://www.aclu.org/
--


```
