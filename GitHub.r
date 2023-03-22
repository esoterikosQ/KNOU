#### 1. Sign up at GitHub.com ################################################

## If you do not have a GitHub account, sign up here:
## https://github.com/join

# ----------------------------------------------------------------------------

#### 2. Install git ##########################################################

## If you do not have git installed, please do so: 
## Windows ->  https://git-scm.com/download/win
## Mac     ->  https://git-scm.com/download/mac
## Linux   ->  https://git-scm.com/download/linux
##             or: $ sudo dnf install git-all

# ----------------------------------------------------------------------------

### 3. Configure git with Rstudio ############################################

## set your user name and email:
usethis::use_git_config(user.name = "esoterikosQ", user.email = "seunggyubak@knou.ac.kr")

## create a personal access token for authentication:
usethis::create_github_token() 
## in case usethis version < 2.0.0: usethis::browse_github_token() (or even better: update usethis!)

## set personal access token:
credentials::set_github_pat("")

# HQ - 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
# GSM - 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
# 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
# 20220902 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
# 20221006 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
<<<<<<< HEAD

=======
# 20221016 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
# 20221102 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
# 20221204 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
>>>>>>> 45d7db18e38a456363de119fa65d780c69b7955f
## or store it manually in '.Renviron':
usethis::edit_r_environ()
## store your personal access token with: GITHUB_PAT=xxxyyyzzz
## and make sure '.Renviron' ends with a newline

# ----------------------------------------------------------------------------

#### 4. Restart R! ###########################################################

# ----------------------------------------------------------------------------

#### 5. Verify settings ######################################################

usethis::git_sitrep()

## Your username and email should be stated correctly in the output. 
## Also, the report shoud cotain something like:
## 'Personal access token: '<found in env var>''

## If you are still having troubles, read the output carefully.
## It might be that the PAT is still not updated in your `.Renviron` file.
## Call `usethis::edit_r_environ()` to update that file manually.

# ----------------------------------------------------------------------------

## THAT'S IT!