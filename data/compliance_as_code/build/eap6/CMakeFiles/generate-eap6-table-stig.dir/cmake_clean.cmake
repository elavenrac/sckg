FILE(REMOVE_RECURSE
  "CMakeFiles/generate-eap6-table-stig"
  "../tables/table-eap6-stig.html"
  "../tables/table-eap6-stig-manual.html"
  "../tables/table-eap6-stig-testinfo.html"
  "unlinked-stig-xccdf.xml"
  "../ssg-eap6-xccdf.xml"
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
  INCLUDE(CMakeFiles/generate-eap6-table-stig.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)