## Most of the stuff taken from:
## https://github.com/oh-my-fish/oh-my-fish/tree/master/lib/git

function git_is_repo -d "Check if directory is a repository"
  test -d .git; or command git rev-parse --git-dir >/dev/null ^/dev/null
end

function git_is_dirty -d "Check if there are changes to tracked files"
  git_is_repo; and not command git diff --no-ext-diff --quiet --exit-code
end

function git_branch_name -d "Get current branch name"
  git_is_repo; and begin
    command git symbolic-ref --short HEAD
  end
end
