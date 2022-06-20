"Sources :
- https://stackoverflow.com/a/36769049
- https://stackoverflow.com/a/13598028
"
Jekyll::Hooks.register :posts, :pre_render do |post|
  first_commit_of_file = `git log --pretty="%ad" --date=iso --diff-filter=A -- "#{ post.path }"`
  post.data['date'] = first_commit_of_file
end