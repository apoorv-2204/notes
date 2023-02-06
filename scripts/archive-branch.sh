echo Checking out $1
git checkout $1

echo Archiving $1
git tag archive/$1

echo Pushing archive
git push origin archive/$1  --no-verify

echo Checking out other branch
git checkout $2 

echo Deleting local copy of $1
git branch -D $1 

echo Deleting remote copy of $1
git push origin :$1 --no-verify