# terraform-provider-aws-4-49-0


```
mkdir terraform-provider-aws-4-49-0
cd terraform-provider-aws-4-49-0
(
  echo "# terraform-provider-aws-4-49-0" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin git@github.com:figma/terraform-provider-aws-4-49-0.git
  git push -u origin main
)

(
  git clone git@github.com:hashicorp/terraform-provider-aws.git
  cd terraform-provider-aws
  git checkout v4.49.0
  rm -rf .git
  cd ..
  mv terraform-provider-aws/* .
  mv terraform-provider-aws/.* .
  rmdir terraform-provider-aws
)
```
