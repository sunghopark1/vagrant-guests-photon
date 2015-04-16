# encoding: UTF-8
# Copyright (c) 2015 VMware, Inc. All Rights Reserved.

module VagrantPlugins
  module GuestPhoton
    module Cap
      module Docker
        def self.docker_daemon_running(machine)
          machine.communicate.test('test -S /run/docker.sock')
        end
      end
    end
  end
end
