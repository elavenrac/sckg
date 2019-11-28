# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/content-0.1.47

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/content-0.1.47/build

# Utility rule file for generate-internal-firefox-xccdf-unlinked-resolved.xml.

# Include the progress variables for this target.
include firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/progress.make

firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml: firefox/xccdf-unlinked-resolved.xml

firefox/xccdf-unlinked-resolved.xml: firefox/shorthand.xml
firefox/xccdf-unlinked-resolved.xml: ../firefox/transforms/shorthand2xccdf.xslt
firefox/xccdf-unlinked-resolved.xml: ../firefox/transforms/constants.xslt
firefox/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
firefox/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-firefox-v4r11-xccdf-manual.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[firefox-content] generating xccdf-unlinked-resolved.xml"
	cd /root/content-0.1.47/build/firefox && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/firefox/xccdf-unlinked-resolved.xml /root/content-0.1.47/firefox/transforms/shorthand2xccdf.xslt /root/content-0.1.47/build/firefox/shorthand.xml
	cd /root/content-0.1.47/build/firefox && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/firefox/xccdf-unlinked-resolved.xml /root/content-0.1.47/build/firefox/xccdf-unlinked-resolved.xml
	cd /root/content-0.1.47/build/firefox && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/add_stig_references.py --disa-stig /root/content-0.1.47/shared/references/disa-stig-firefox-v4r11-xccdf-manual.xml --unlinked-xccdf /root/content-0.1.47/build/firefox/xccdf-unlinked-resolved.xml

firefox/shorthand.xml: ../firefox/./profiles/stig.profile
firefox/shorthand.xml: bash-remediation-functions.xml
firefox/shorthand.xml: ../firefox/./guide/benchmark.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/group.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/var_default_home_page.var
firefox/shorthand.xml: ../firefox/./guide/firefox/var_required_file_types.var
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-cookies/group.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-cookies/firefox_preferences-cookies_clear/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-cookies/firefox_preferences-cookies_user_notice/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-dod_root_certificate/group.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-dod_root_certificate/firefox_preferences-dod_root_certificate_installed/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-dod_root_certificate/firefox_preferences-enable_ca_trust/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-lock_settings/group.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-lock_settings/firefox_preferences-lock_settings_config_file/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-lock_settings/firefox_preferences-lock_settings_obscure/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-addons_plugin_updates/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-auto-download_actions/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-auto-update_of_firefox/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-autofill_forms/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-autofill_passwords/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-home_page/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-javascript_context_menus/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-javascript_status_bar_changes/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-javascript_status_bar_text/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-javascript_window_changes/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-javascript_window_resizing/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-non-secure_page_warning/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-open_confirmation/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-password_store/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-pop-up_windows/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-search_update/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-shell_protocol/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-ssl_protocol_tls/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-ssl_version_2/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-ssl_version_3/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/firefox_preferences-verification/rule.yml
firefox/shorthand.xml: ../firefox/./guide/firefox/installed_firefox_version_supported/rule.yml
firefox/shorthand.xml: bash-remediation-functions.xml
firefox/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[firefox-content] generating shorthand.xml"
	cd /root/content-0.1.47/build/firefox && /usr/bin/cmake -E remove_directory /root/content-0.1.47/build/firefox/rules
	cd /root/content-0.1.47/build/firefox && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /root/content-0.1.47/build/firefox/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/firefox/product.yml --bash-remediation-fns /root/content-0.1.47/build/bash-remediation-functions.xml --output /root/content-0.1.47/build/firefox/shorthand.xml build
	cd /root/content-0.1.47/build/firefox && /bin/xmllint --format --output /root/content-0.1.47/build/firefox/shorthand.xml /root/content-0.1.47/build/firefox/shorthand.xml

generate-internal-firefox-xccdf-unlinked-resolved.xml: firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml
generate-internal-firefox-xccdf-unlinked-resolved.xml: firefox/xccdf-unlinked-resolved.xml
generate-internal-firefox-xccdf-unlinked-resolved.xml: firefox/shorthand.xml
generate-internal-firefox-xccdf-unlinked-resolved.xml: firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/build.make
.PHONY : generate-internal-firefox-xccdf-unlinked-resolved.xml

# Rule to build all files generated by this target.
firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/build: generate-internal-firefox-xccdf-unlinked-resolved.xml
.PHONY : firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/build

firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/clean:
	cd /root/content-0.1.47/build/firefox && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/cmake_clean.cmake
.PHONY : firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/clean

firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/firefox /root/content-0.1.47/build /root/content-0.1.47/build/firefox /root/content-0.1.47/build/firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : firefox/CMakeFiles/generate-internal-firefox-xccdf-unlinked-resolved.xml.dir/depend

