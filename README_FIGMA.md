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
  # Make sure the repository is 'public', not 'internal' (Ask security for help)
)


(
  # grab terrafom provider GPG_PRIVATE_KEY from `Eng - Prod` 1pass vault
  # upload as github action environment variable
)

(
  curl https://raw.githubusercontent.com/figma/terraform-provider-aws/figma/.goreleaser.yml > .goreleaser.yml
  curl https://raw.githubusercontent.com/hashicorp/terraform-provider-scaffolding/main/.github/workflows/release.yml > .github/workflows/release.yml

  Edit .github.workflows/release.yml to add `--timeout 120m to the goreleaser step
```
      -
        name: Run GoReleaser
        uses: goreleaser/goreleaser-action@8f67e590f2d095516493f017008adc464e63adb1 # v4.1.0
        with:
          version: latest
          args: release --rm-dist --timeout 120m
```

(
  # https://github.com/figma/$repo/settings/actions
  # Allow all actions and reusable workflows
)

(
  if [[ "$git_tag" = "" ]]; then
    echo "don't forget to set \$git_tag"
  else
    git add . -A
    git commit -nm "Misc changes other than the codebase duplication [$(date)]"
    git tag -d $git_tag
    git tag $git_tag
    git push origin main
    git push origin $git_tag --force
  fi
)

(
  # Got to https://registry.terraform.io/
  # Log in via github credentials
  # Click 'Publish'
  # Click 'figma'
)
```
