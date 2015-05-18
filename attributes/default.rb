# Copyright 2014 N3TWORK, Inc.
#
# Licensed under Apache 2.0 - see the LICENSE file


# Downloading
default[:druid][:version] = "0.7.1.1"
default[:druid][:mirror] = "http://static.druid.io/artifacts/releases"
default[:druid][:checksum] = "574862999155f58aa60e741b67978365c0f01cba5eef5c9ed58ec956f1a46983"
# Installation
default[:druid][:user] = "druid"
default[:druid][:group] = "druid"
default[:druid][:install_dir] = "/opt/druid"
default[:druid][:config_dir] = "/etc/druid"

# Configuration defaults
default[:druid][:properties]["druid.host"] = node[:ipaddress]
default[:druid][:timezone] = "UTC"
default[:druid][:encoding] = "UTF-8"
default[:druid][:java_opts] = "-Xmx1G"
default[:druid][:extra_classpath] = ""
default[:druid][:java_io_tmpdir] = ::File.join(node[:druid][:install_dir], "tmpdir")
default[:druid][:log_to_syslog] = 0
default[:druid][:log_to_log4j2] = 1
default[:druid][:java_util_logging_manager] = "org.apache.logging.log4j.jul.LogManager"
default[:druid][:log_level] = "INFO"
default[:druid][:log_base_path] = "/var/log/druid"



# Type-specific defaults
default[:druid][:broker][:properties]["druid.port"] = 8080
default[:druid][:coordinator][:properties]["druid.port"] = 8081
default[:druid][:realtime][:properties]["druid.port"] = 8082
default[:druid][:historical][:properties]["druid.port"] = 8083
default[:druid][:overlord][:properties]["druid.port"] = 8084
default[:druid][:indexer][:properties]["druid.port"] = 8085
default[:druid][:middleManager][:properties]["druid.port"] = 8086

# Other
default['java']['jdk_version'] = '7'


