# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'poskam.ru' > CNAME

git init
git add -A
git commit -m 'deploy123'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:olyaseverova/stone.git main:gh-pages

cd -