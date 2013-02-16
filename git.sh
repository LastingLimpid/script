git config --global alias.co checkout
git config --global alias.st status
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.rb rebase
git config --global alias.mg merge

git remote add origin git@github.com:railstutorial/first_app.git

# For illustration only; don't do this unless you mess up a branch
$ git checkout -b topic-branch
$ <really screw up the branch>
$ git add .
$ git commit -a -m "Major screw up"
$ git checkout master
$ git branch -d topic-branch //delete 合并过的分支
$ git branch -D topic-branch //delete 合并或没有合并过的分支

