# terraform-provider-aws-4-49-0


```

repo="terraform-provider-aws-4-49-0"
version="4.49.0"
git_tag="v$version"

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
  # Make sure the repository is 'public', not 'internal' (Ask security for help)
)

(
  # Got to https://registry.terraform.io/
  # Log in via github credentials
  # Click 'Publish'
  # Click 'figma'
)

(
  # brew install gpgtools
  # https://github.com/figma/terraform-provider-aws-4-49-0/settings/secrets/actions
  # New repository secret
  # GPG_PRIVATE_KEY
)

(
  # https://github.com/figma/terraform-provider-aws-4-49-0/settings/actions
  # Allow all actions and reusable workflows
)

(
  git tag $git_tag
  git push origin $git_tag --force
)
```
