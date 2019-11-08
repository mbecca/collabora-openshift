#!/bin/bash
set -e

export HOME=/home/lool


# Run loolwsd when asked to do so
if [ "$1" = 'loolwsd' ]; then
  echo "===> Starting Collabora Online"
  exec /usr/bin/loolwsd \
       --version \
       --o:sys_template_path=/opt/lool/systemplate \
       --o:lo_template_path=/opt/collaboraoffice6.0 \
       --o:child_root_path=/opt/lool/child-roots \
       --o:file_server_root_path=/usr/share/loolwsd
fi

# Run CMD
exec "$@"
