FILE(REMOVE_RECURSE
  "CMakeFiles/generate-ssg-ubuntu1604-ds.xml"
  "../ssg-ubuntu1604-ds.xml"
  "../ssg-ubuntu1604-ds-1.2.xml"
  "../ssg-ubuntu1604-xccdf-1.2.xml"
  "../ssg-ubuntu1604-oval.xml"
  "../ssg-ubuntu1604-ocil.xml"
  "../ssg-ubuntu1604-cpe-dictionary.xml"
  "../ssg-ubuntu1604-cpe-oval.xml"
  "../ssg-ubuntu1604-xccdf.xml"
  "xccdf-linked.xml"
  "oval-linked.xml"
  "ocil-linked.xml"
  "oval-unlinked.xml"
  "xccdf-unlinked.xml"
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
  INCLUDE(CMakeFiles/generate-ssg-ubuntu1604-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
