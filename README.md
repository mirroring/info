# GitHub Mirroring

## Mirroring Git Repositories

1.  Create the target repository on GitHub
2.  Clone the repository:

        $ git clone --mirror <repo-url> <repo-name>.git

3.  Add the GitHub repo to the remotes:

        $ cd <repo-name>.git
        $ git remote add github <github-repo-url>

4.  Push all tags and branches to GitHub:

        $ git push github --all

## Mirroring Mercurial Repositories

Requires installation of the `hg-git` plugin using `easy_install hg-git`.

1.  Create the target repository on GitHub
2.  Clone the repository using `hg`:

        $ hg clone <repo-url> <repo-name>.hg

3.  Add bookmark to the `hg` repository for `master`:

        $ cd <repo-name>.hg
        $ hg bookmark -r default master

4.  Add the following line to `<repo-name>.hg/.hg/hgrc` in the `[paths]` section:

        github = git+ssh://<github-ssh-repo-url>

    The `git+ssh://` prefix is required for `hg-git`.

5.  Push the repository to GitHub:

        $ hg push github
