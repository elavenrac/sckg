# CMake generated Testfile for 
# Source directory: /root/content-0.1.47/rhel6
# Build directory: /root/content-0.1.47/build/rhel6
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(ansible-playbook-syntax-check-rhel6 "/root/content-0.1.47/tests/ansible_playbook_check.sh" "/bin/ansible-playbook" "/root/content-0.1.47/build/ansible" "rhel6")
ADD_TEST(rhel6-ansible-playbooks-generated-for-all-rules "env" "PYTHONPATH=/root/content-0.1.47" "/bin/python" "/root/content-0.1.47/tests/ansible_playbooks_generated_for_all_rules.py" "--build-dir" "/root/content-0.1.47/build" "--product" "rhel6")
ADD_TEST(rhel6-ansible-assert-playbooks-schema "sh" "-c" "/bin/python \$@" "_" "/root/content-0.1.47/tests/assert_ansible_schema.py" "/root/content-0.1.47/build/rhel6/playbooks/all/*")
ADD_TEST(validate-ssg-rhel6-cpe-dictionary.xml "/bin/oscap" "cpe" "validate" "/root/content-0.1.47/build/ssg-rhel6-cpe-dictionary.xml")
ADD_TEST(validate-ssg-rhel6-cpe-oval.xml "/bin/oscap" "oval" "validate" "--schematron" "/root/content-0.1.47/build/ssg-rhel6-cpe-oval.xml")
ADD_TEST(validate-ssg-rhel6-xccdf.xml "/bin/oscap" "xccdf" "validate" "/root/content-0.1.47/build/ssg-rhel6-xccdf.xml")
ADD_TEST(verify-references-ssg-rhel6-xccdf.xml "env" "PYTHONPATH=/root/content-0.1.47" "/bin/python" "/root/content-0.1.47/build-scripts/verify_references.py" "--rules-with-invalid-checks" "--ovaldefs-unused" "/root/content-0.1.47/build/ssg-rhel6-xccdf.xml")
ADD_TEST(verify-ssg-rhel6-xccdf.xml-override-true-all-profile-titles "/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"title\"][not(@override=\"true\")]" "/root/content-0.1.47/build/ssg-rhel6-xccdf.xml")
SET_TESTS_PROPERTIES(verify-ssg-rhel6-xccdf.xml-override-true-all-profile-titles PROPERTIES  WILL_FAIL "true")
ADD_TEST(verify-ssg-rhel6-xccdf.xml-override-true-all-profile-descriptions "/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"description\"][not(@override=\"true\")]" "/root/content-0.1.47/build/ssg-rhel6-xccdf.xml")
SET_TESTS_PROPERTIES(verify-ssg-rhel6-xccdf.xml-override-true-all-profile-descriptions PROPERTIES  WILL_FAIL "true")
ADD_TEST(validate-ssg-rhel6-oval.xml "/bin/oscap" "oval" "validate" "--schematron" "/root/content-0.1.47/build/ssg-rhel6-oval.xml")
ADD_TEST(validate-ssg-rhel6-ds.xml "/bin/oscap" "ds" "sds-validate" "/root/content-0.1.47/build/ssg-rhel6-ds.xml")
ADD_TEST(validate-ssg-rhel6-ds-1.2.xml "/bin/oscap" "ds" "sds-validate" "/root/content-0.1.47/build/ssg-rhel6-ds-1.2.xml")
ADD_TEST(validate-ssg-centos6-xccdf.xml "/usr/bin/cmake" "-E" "touch" "/root/content-0.1.47/build/rhel6/validation-ssg-centos6-xccdf.xml")
ADD_TEST(validate-ssg-centos6-ds.xml "/bin/oscap" "ds" "sds-validate" "/root/content-0.1.47/build/ssg-centos6-ds.xml")
ADD_TEST(validate-ssg-centos6-ds-1.2.xml "/bin/oscap" "ds" "sds-validate" "/root/content-0.1.47/build/ssg-centos6-ds-1.2.xml")
ADD_TEST(validate-ssg-sl6-xccdf.xml "/usr/bin/cmake" "-E" "touch" "/root/content-0.1.47/build/rhel6/validation-ssg-sl6-xccdf.xml")
ADD_TEST(validate-ssg-sl6-ds.xml "/bin/oscap" "ds" "sds-validate" "/root/content-0.1.47/build/ssg-sl6-ds.xml")
ADD_TEST(validate-ssg-sl6-ds-1.2.xml "/bin/oscap" "ds" "sds-validate" "/root/content-0.1.47/build/ssg-sl6-ds-1.2.xml")
