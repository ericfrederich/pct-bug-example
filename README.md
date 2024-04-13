# Example Terraform Repo

This has a file `infra/ec2.tf` which should be excluded by all pre-commit hooks.

You'll notice it for sure is excluded by `trailing-whitespace` and `end-of-file-fixer` because it has both trailing whitespace as well as a bunch of newlines at the end of the file.

Now run `pre-commit run -a` and you'll notice everything will say __*Passed*__

Now uncomment the `pre-commit-terraform` section in `.pre-commit-config.yaml` and run `pre-commit run -a`.
You will notice that even though `ec2.tf` should be skipped `terraform fmt` was definitely ran against it.
