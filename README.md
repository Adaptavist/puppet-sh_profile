# Sh_Profile Module
[![Build Status](https://travis-ci.org/Adaptavist/puppet-sh_profile.svg?branch=master)](https://travis-ci.org/Adaptavist/puppet-sh_profile)

## Overview

The **Sh_Profile** module places a set of base `profile.d` scripts on managed machines. The scripts that are distributed are stored in a single directory on the puppet master. Functionality can be extended or modified by including scripts in this directory. Some scripts a bundled, these can be modified or removed as required.

The bundled scripts are:

* `default-editor.sh` sets the default editor to vi
* `sytem-java.sh` locates a JDK and setups `JAVA_HOME`, `JRE_HOME`, `CLASSPATH` and `PATH` environment variable. When searching for JDK this script will search for a Sun JDK 6 first and then an Oracle JDK 7.

## Configuration

This module has no configuration parameters.

Custom scripts can be added to `files/$client/$environment/etc/profile.d/`, these will be distributed to managed machines just like the bundled scripts. Existing scripts in this directory can be modified.

## Dependencies

This module has no dependencies on other puppet modules.

