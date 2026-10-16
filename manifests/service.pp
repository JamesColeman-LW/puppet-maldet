# Setup and manage Maldet inotify monitor service
class maldet::service (
  String $service_ensure = $maldet::service_ensure,
) {
  # install.sh enables the service. On 2.x a stopped-but-enabled service starts the
  # monitor at boot from default_monitor_mode, so enable has to follow ensure.
  service { 'maldet':
    ensure => $service_ensure,
    enable => $service_ensure == 'running',
  }
}
