# ☸️ Kubernetes Practice Manifests & Notes

> A complete collection of Kubernetes YAML manifests and learning notes — covering core concepts from namespaces and services to advanced topics like RBAC, Network Policies, HPA, and SSL/TLS.

**Author:** Muhammad Saad Hussain | [@saadhussain07](https://github.com/saadhussain07)  
**LinkedIn:** [muhammad-saad-hussain](https://www.linkedin.com/in/muhammad-saad-hussain-28435b3a2/)  
**Live K8s Project:** [k8s-kind-voting-app](https://github.com/saadhussain07/k8s-kind-voting-app)

---

## 📁 Repository Structure

```
k8s-practice-manifests/
│
├── 📂 namespaces/                        # Namespace creation & resource isolation
├── 📂 services/                          # ClusterIP, NodePort, LoadBalancer, Headless
├── 📂 Daemon-set/                        # DaemonSet for node-level workloads
├── 📂 multi-container-pod/               # Sidecar, init containers, ambassador patterns
├── 📂 Health-probes/                     # Liveness, Readiness, Startup probes
├── 📂 Replication-controller-replica-set/ # ReplicationController & ReplicaSet
├── 📂 HPA-VPA-AutoScaling/               # Horizontal & Vertical Pod Autoscaler
├── 📂 node-affinity/                     # Node affinity, taints & tolerations
├── 📂 Kubernetes-Volume/                 # PV, PVC, StorageClass, emptyDir, hostPath
├── 📂 docker-volume/                     # Docker volume concepts & K8s comparison
├── 📂 DNS/                               # CoreDNS, service discovery, DNS debugging
├── 📂 Network-Policies/                  # Ingress/Egress network policies
├── 📂 metric-server/                     # Metrics Server setup & kubectl top
├── 📂 Authentication-Authorization/      # K8s auth mechanisms & kubeconfig
├── 📂 ClusterRole/                       # ClusterRole, Role, RoleBinding, RBAC
├── 📂 Service-Accounts/                  # ServiceAccount creation & token management
├── 📂 SSL-TLS/                           # TLS secrets, cert-manager, HTTPS setup
└── 📂 Projects/                          # Complete mini-projects combining concepts
```

---

## 📚 Topics Covered

### 🟢 Core Concepts
| Topic | Key Resources |
|-------|--------------|
| **Namespaces** | Resource isolation, cross-namespace communication |
| **Services** | ClusterIP, NodePort, LoadBalancer, ExternalName |
| **ReplicaSet** | Pod replication, self-healing, selector matching |
| **DaemonSet** | Node-level pods — logging, monitoring agents |

### 🔵 Workloads & Scheduling
| Topic | Key Resources |
|-------|--------------|
| **Multi-Container Pods** | Sidecar, init containers, shared volumes |
| **Health Probes** | Liveness, Readiness, Startup probe configs |
| **Node Affinity** | nodeSelector, affinity rules, taints & tolerations |
| **HPA & VPA** | CPU/memory-based autoscaling configurations |

### 🟡 Storage & Networking
| Topic | Key Resources |
|-------|--------------|
| **Kubernetes Volumes** | PV, PVC, StorageClass, ConfigMap, Secret volumes |
| **Docker Volumes** | Volume types comparison with K8s |
| **DNS** | Service discovery, CoreDNS, nslookup debugging |
| **Network Policies** | Pod-to-pod traffic control, namespace isolation |

### 🔴 Security & Access Control
| Topic | Key Resources |
|-------|--------------|
| **Authentication & Authorization** | kubeconfig, certificates, bearer tokens |
| **RBAC — ClusterRole** | Role, ClusterRole, RoleBinding, ClusterRoleBinding |
| **Service Accounts** | Pod identity, token projection, IRSA |
| **SSL/TLS** | TLS secrets, cert-manager, HTTPS Ingress |

### ⚙️ Observability
| Topic | Key Resources |
|-------|--------------|
| **Metric Server** | Resource usage, `kubectl top nodes/pods` |

---

## 🚀 How to Use

```bash
# Clone the repo
git clone https://github.com/saadhussain07/k8s-practice-manifests
cd k8s-practice-manifests

# Apply any manifest
kubectl apply -f namespaces/

# Check resources
kubectl get all -n <namespace>

# Delete when done
kubectl delete -f namespaces/
```

---

## ⚡ Quick Reference

### Most Used kubectl Commands
```bash
# Cluster overview
kubectl get nodes -o wide
kubectl get pods --all-namespaces

# Apply & delete
kubectl apply -f manifest.yaml
kubectl delete -f manifest.yaml

# Debug
kubectl describe pod <pod-name>
kubectl logs <pod-name> -c <container>
kubectl exec -it <pod-name> -- /bin/sh

# Scaling
kubectl scale deployment <name> --replicas=3
kubectl autoscale deployment <name> --min=2 --max=5 --cpu-percent=70

# RBAC
kubectl auth can-i create pods --as=system:serviceaccount:default:my-sa
kubectl get rolebindings,clusterrolebindings --all-namespaces

# Network debug
kubectl run debug --image=busybox --rm -it -- /bin/sh
nslookup <service-name>.<namespace>.svc.cluster.local
```

---

## 🔗 Related Projects

- [🤖 AIOps K8s Framework](https://github.com/saadhussain07) — IEEE TNSM — Uses K8s for fault injection & remediation
- [📊 K8s Monitoring Stack](https://github.com/saadhussain07/k8s-monitoring-stack) — Prometheus + Grafana + Loki
- [⚙️ Flask GitOps ArgoCD](https://github.com/saadhussain07/flask-gitops-argocd-kubernetes-Project)
- [🌐 RocketDevOps](https://rocketdevops.vercel.app) — DevOps learning website

---

<p align="center">⭐ Star this repo if it helped you learn Kubernetes!</p>