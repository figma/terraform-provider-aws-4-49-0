# terraform-provider-aws-4-49-0


```

repo="terraform-provider-aws-4-49-0"
version="4.49.0"

mkdir $repo
cd $repo


(
  git init
  touch FIGMA_README.md
  git add . -A
  git commit -m "first commit"
  git branch -M main
  git remote add origin git@github.com:figma/$repo.git
  git push -u origin main
)

(
  git clone git@github.com:hashicorp/terraform-provider-aws.git
  cd terraform-provider-aws
  git checkout v$version
  rm -rf .git
  cd ..
  mv terraform-provider-aws/* .
  mv terraform-provider-aws/.* .
  rmdir terraform-provider-aws
  git add . -A
  git commit -nm 'Duplicate entire codebase from provider upstream'
  git push -u origin main
)

(
  git add . -A
  git commit -nm 'Misc changes other than the codebase duplication'
)

(
  # Got to https://registry.terraform.io/
  # Log in via github credentials
  # Click 'Publish'
  # Click 'figma'
)

(
  git tag v$version
)
```
