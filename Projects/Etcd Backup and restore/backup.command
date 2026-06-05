  creating backup
  
  etcdctl --endpoints=https://127.0.0.1:2379 \
> --cacert=/etc/kubernetes/pki/etcd/ca.crt \
> --cert=/etc/kubernetes/pki/etcd/server.crt \
> --key=/etc/kubernetes/pki/etcd/server.key \
> snapshot save /opt/etcd-backup.db

othercommand:(tocheck backup)
# etcdctl --write-out=table snapshot status /opt/etcdbackup.db


  creating restor from backup 
  
  etcdctl --endpoints=https://127.0.0.1:2379 \
 --cacert=/etc/kubernetes/pki/etcd/ca.crt \
 --cert=/etc/kubernetes/pki/etcd/server.crt \
 --key=/etc/kubernetes/pki/etcd/server.key \
 snapshot restore /opt/etcd-backup.db --data-dir=/var/lib/etcd-restore-from-backup