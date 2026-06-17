# Stages the single canonical bibliography (../publications.bib at the repo
# root — the file Charles edits) into docs/_bibliography/ so jekyll-scholar can
# read it.
#
# The publications page renders its sections by querying this one file with
#   {% bibliography --query @*[keywords ~= ...] %}
# so there are no hand-maintained per-section subfiles. The staged copy is a
# build artifact and is gitignored.

require "fileutils"

Jekyll::Hooks.register :site, :after_init do |site|
  root = File.expand_path("..", site.source)
  source = File.join(root, "publications.bib")

  unless File.exist?(source)
    Jekyll.logger.warn "bibstage:", "canonical bib not found at #{source}"
    next
  end

  out_dir = File.join(site.source, "_bibliography")
  FileUtils.mkdir_p(out_dir)
  File.write(File.join(out_dir, "publications.bib"), File.read(source))
  Jekyll.logger.info "bibstage:", "staged #{File.basename(source)} -> _bibliography/publications.bib"
end
