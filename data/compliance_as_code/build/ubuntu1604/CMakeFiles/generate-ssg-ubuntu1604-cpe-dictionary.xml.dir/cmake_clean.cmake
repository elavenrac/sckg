FILE(REMOVE_RECURSE
  "CMakeFiles/generate-ssg-ubuntu1604-cpe-dictionary.xml"
  "../ssg-ubuntu1604-cpe-dictionary.xml"
  "../ssg-ubuntu1604-cpe-oval.xml"
  "oval-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/generate-ssg-ubuntu1604-cpe-dictionary.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
