cd zola-academic-example && zola build
rm -r ../docs/*
rsync -r public/* ../docs
git add docs
git commit -m 'build and deploy'
git push