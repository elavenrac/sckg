FILE(REMOVE_RECURSE
  "CMakeFiles/generate-ssg-sl7-xccdf.xml"
  "../ssg-sl7-xccdf.xml"
  "../ssg-rhel7-xccdf.xml"
  "xccdf-linked.xml"
  "oval-linked.xml"
  "ocil-linked.xml"
  "xccdf-unlinked.xml"
  "oval-unlinked.xml"
  "ocil-unlinked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "bash-fixes.xml"
  "ansible-fixes.xml"
  "puppet-fixes.xml"
  "anaconda-fixes.xml"
  "xccdf-unlinked-resolved.xml"
  "shorthand.xml"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/generate-ssg-sl7-xccdf.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
