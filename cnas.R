# This creates a new folder called 'cnas_website' on your Desktop
dir.create("C:/Users/Hp/Desktop/cnas_website", recursive = TRUE)
# Move into that folder
setwd("C:/Users/Hp/Desktop/cnas_website")
# Install distill and rmarkdown (only needed once)
install.packages(c("distill", "rmarkdown", "knitr"))
library(distill)

create_website(
  dir = ".",                  # '.' means use the current folder
  title = "Carbon Neutral Advisory Services",
  gh_pages = TRUE
)
# Create the homepage (already exists, but we'll replace its content later)
create_post("index.Rmd", title = "Home")

# Create the services page
create_post("services.Rmd", title = "Our Advisory Services")

# Create the About page
create_post("about.Rmd", title = "About Us")

# Create the contact page
create_post("contact.Rmd", title = "Contact Us")

# Check what's in your folder
list.files()

# Delete the existing post folders if they exist
unlink("_services.Rmd", recursive = TRUE)
unlink("_about.Rmd", recursive = TRUE)
unlink("_contact.Rmd", recursive = TRUE)

# Also delete any existing Rmd files
file.remove("services.Rmd")
file.remove("about.Rmd")
file.remove("contact.Rmd")
# Create new files
file.create("services.Rmd")
file.create("about.Rmd")
file.create("contact.Rmd")
file.create("services.Rmd")
list.files()
file.edit("services.Rmd")
file.edit("about.Rmd")
file.edit("contact.Rmd")
file.create("_site.yml")
file.edit("_site.yml")
rmarkdown::render_site()
browseURL("_site/index.html")
system("git add .")
system('git commit -m "Complete website with all pages"')
system("git push")
system("git init")
system('git remote add origin https://github.com/Tapedzwa07/cnas_website.git')
system("git add .")
system('git commit -m "Complete website with all pages"')
system("git branch -M main")
system("git push -u origin main")
system("git remote set-url origin https://github.com/Tapedzwa07/cnas_website.git")
system("git push -u origin main")
setwd("C:/Users/Hp/Desktop/cnas_website")
list.files()
rmarkdown::render_site()
list.files()
file.copy("_site/", ".", recursive = TRUE, overwrite = TRUE)
system("git add .")
system('git commit -m "Add index.html and website files"')
system("git push")
system("git push --set-upstream origin main")
system("git pull origin main --allow-unrelated-histories")
system("git fetch origin")
system("git pull origin main --allow-unrelated-histories")
system("git push")
system("git push --set-upstream origin main")
setwd("C:/Users/Hp/Desktop/cnas_website")
file.copy("_site/", ".", recursive = TRUE, overwrite = TRUE)
list.files()
system("git add .")
system('git commit -m "Move index.html to root"')
system("git push")
list.files()
# Copy all HTML files from _site to root
file.copy("_site/index.html", ".", overwrite = TRUE)
file.copy("_site/about.html", ".", overwrite = TRUE)
file.copy("_site/services.html", ".", overwrite = TRUE)
file.copy("_site/contact.html", ".", overwrite = TRUE)
system("git add index.html about.html services.html contact.html")
system('git commit -m "Add HTML files to root"')
system("git push")
setwd("C:/Users/Hp/Desktop/cnas_website")
list.files()
# Check if site_libs folder exists
list.dirs("_site")
# Copy everything from _site to root
file.copy("_site/", ".", recursive = TRUE, overwrite = TRUE)

# Also copy docs folder contents to root
file.copy("_site/docs/", ".", recursive = TRUE, overwrite = TRUE)
list.files()
# Copy site_libs from _site to root
file.copy("_site/site_libs", ".", recursive = TRUE, overwrite = TRUE)

# Also copy from _site/docs if needed
file.copy("_site/docs/site_libs", ".", recursive = TRUE, overwrite = TRUE)
list.files()
system("git add .")
system('git commit -m "Add all site assets including site_libs"')
system("git push")
writeLines('
<!DOCTYPE html>
<html>
<head>
  <title>Test Page</title>
</head>
<body>
  <h1>Hello World!</h1>
  <p>If you see this, the server is working.</p>
</body>
</html>
', "test.html")

system("git add test.html")
system('git commit -m "Add test page"')
system("git push")


readLines("index.html")


rmarkdown::render_site()

file.info("_site/index.html")$size

file.copy("_site/index.html", ".", overwrite = TRUE)
file.copy("_site/about.html", ".", overwrite = TRUE)
file.copy("_site/services.html", ".", overwrite = TRUE)
file.copy("_site/contact.html", ".", overwrite = TRUE)

system("git add index.html about.html services.html contact.html")
system('git commit -m "Add rendered HTML files with content"')
system("git push")

readLines("index.html", n = 5)
