#
# Cookbook Name:: sidekiq
# Attrbutes:: default
#

default[:sidekiq] = {
  # Sidekiq will be installed on to application/solo instances,
  # unless a utility name is set, in which case, Sidekiq will
  # only be installed on to a utility instance that matches
  # the name
  :utility_name => 'sidekiq',

  # Number of workers (not threads)
  :workers => 1,

  # Concurrency
  :concurrency => 25,

  # Queues
  :queues => {
    # :queue_name => priority
    :import => 50,
    :default => 25,
    :mixpanel => 10,
    :airbrake => 10,
    :salesforce => 5
  },

  # Verbose
  :verbose => false
}
