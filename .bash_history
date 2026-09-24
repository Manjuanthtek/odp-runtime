ls
curl -v --fail-with-body -X POST "http://localhost:8080/openapi/openlineage/api/v1/lineage" -H "Content-Type: application/json" --data-binary "@lineage-event.json"
python3 -m pip install --upgrade pip wheel setuptools
python3 -m pip install --upgrade acryl-datahub
ls
python3 -m datahub docker quickstart
ls
curl -v --fail-with-body -X POST "http://localhost:8080/openapi/openlineage/api/v1/lineage" -H "Content-Type: application/json" --data-binary "@lineage-event.json"
python3 -m datahub docker quickstart
gcloud services enable container.googleapis.com
gcloud config list
gcloud projects describe PROJECT_ID
gcloud projects describe tgs-int-odp-dev-001
gcloud auth list
gcloud projects get-iam-policy tgs-int-odp-dev-001
gcloud services list --enabled
gcloud services list --enabled | grep container
gcloud compute networks list
gcloud container clusters list
gcloud artifacts repositories list
gcloud sql instances list
gcloud container clusters list
gcloud container clusters create odp-poc-test 2
--zone=asia-south1-a 3
--num-nodes=1
gcloud container clusters create odp-poc-test   --zone=asia-south1-a   --num-nodes=1
gcloud compute networks list
gcloud compute networks subnets list
gcloud container get-server-config --zone=asia-south1-a
gcloud compute networks list
gcloud compute networks subnets list
gcloud compute networks create odp-vpc-dev     --subnet-mode=custom
gcloud compute networks list
kubectl create ns registry
kubectl create ns governance
kubectl create ns evidence
kubectl create ns policy
kubectl create ns opa
kubectl create ns observability
kubectl get nodes 
gcloud artifacts repositories list
gcloud artifacts repositories create odp-ar-dev --repository-format=docker --location=asia-south1 --description="ODP Docker Artifact Registry" --project=tgs-int-odp-dev-001
gcloud artifacts repositories list
gcloud sql instances list
gcloud secrets list
gcloud container clusters list
kubectl get ns 
gcloud components install kubectl gke-gcloud-auth-plugin
sudo apt-get install kubectl google-cloud-cli-gke-gcloud-auth-plugin
kubectl get nodes 
gcloud container clusters get-credentials sandbox-gke-cluster-c-01   --zone=europe-west2-c   --project=tgs-int-ukemeapractice-dev-01
kubectl config current-context
kubectl get nodes
gcloud container clusters get-credentials sandbox-gke-cluster-c-01   --zone=europe-west2-c   --project=tgs-int-ukemeapractice-dev-01
kubectl get nodes
gcloud container clusters describe sandbox-gke-cluster-c-01   --zone=europe-west2-c   --project=tgs-int-ukemeapractice-dev-01   --format="yaml(privateClusterConfig,controlPlaneEndpointsConfig)"
gcloud container clusters get-credentials sandbox-gke-cluster-c-01   --zone=europe-west2-c   --project=tgs-int-ukemeapractice-dev-01   --internal-ip
kubectl get nodes
PROJECT_ID=tgs-int-odp-dev-001
gcloud config set project $PROJECT_ID
gcloud compute networks list --project=$PROJECT_ID
gcloud compute networks subnets list   --project=$PROJECT_ID   --format="table(name,region,network,ipCidrRange,privateIpGoogleAccess)"
gcloud compute firewall-rules list   --project=$PROJECT_ID   --format="table(name,network,direction,priority,sourceRanges,allowed,denied)"
gcloud compute routes list   --project=$PROJECT_ID   --format="table(name,network,destRange,nextHopGateway,nextHopInstance,priority)"
gcloud compute routers list --project=$PROJECT_ID
gcloud container clusters list --project=$PROJECT_ID
gcloud container clusters describe CLUSTER_NAME   --region=REGION   --project=$PROJECT_ID   --format="yaml(name,network,subnetwork,ipAllocationPolicy,privateClusterConfig,networkConfig)"
gcloud container clusters create-auto odp-cluster --region=asia-south1 --network=tgs-int-odp-vpc --subnetwork=tgs-int-odp-subnet
gcloud container clusters get-credentials odp-cluster --region asia-south1
kubectl get nodes 
kubectl get nodes
gcloud container clusters get-credentials odp-cluster --region asia-south1
gcloud container clusters create-auto odp-cluster --region=asia-south1 --network=tgs-int-odp-vpc --subnetwork=tgs-int-odp-subnet
gcloud container clusters describe odp-cluster   --region asia-south1   --format="value(status,autopilot.enabled)"
kubectl config current-context
kubectl get pods -A
kubectl get events -A --sort-by=.lastTimestamp
kubectl apply -f k8s/
kubectl get nodes --watch
kubectl get nodes 
gcloud container operations list   --region asia-south1   --filter="targetLink:odp-cluster"   --sort-by="~startTime"
kubectl describe pod -n kube-system   antrea-controller-horizontal-autoscaler-865df88bf6-qxgr
kubectl get events -A --sort-by=.lastTimestamp | tail -50
gcloud container clusters describe odp-cluster   --region asia-south1   --format="yaml(status,statusMessage,statusConditions)"
gcloud compute networks subnets describe tgs-int-odp-subnet   --region asia-south1   --format="yaml(ipCidrRange,secondaryIpRanges,stackType)"
gcloud compute regions describe asia-south1   --format="yaml(quotas)"
gcloud container node-pools list   --cluster odp-cluster   --region asia-south1
gcloud compute instances list   --filter="name~gk3-odp-cluster"   --format="table(name,status,zone)"
gcloud container clusters describe odp-cluster   --region asia-south1   --format="yaml(network,subnetwork,ipAllocationPolicy,networkConfig,privateClusterConfig)"
gcloud logging read   'resource.type="gke_cluster"
   AND resource.labels.cluster_name="odp-cluster"
   AND severity>=WARNING'   --limit=50   --format="table(timestamp,severity,textPayload,jsonPayload.message)"
gcloud logging read   'resource.type="gce_instance"
   AND protoPayload.resourceName:"gk3-odp-cluster"'   --limit=50   --format="table(timestamp,protoPayload.methodName,protoPayload.status.message)"
gcloud container clusters delete odp-cluster   --region asia-south1
gcloud container clusters create-auto odp-cluster   --region asia-south1   --network tgs-int-odp-vpc   --subnetwork tgs-int-odp-subnet
gcloud container clusters get-credentials odp-cluster   --region asia-south1
kubectl get nodes --watch
kubectl get nodes
kubectl get pods -A
kubectl get events -A --sort-by=.lastTimestamp | tail -30
kubectl apply -f k8s/
kubectl get pods -A --watch
kubectl create namespace gateway
kubectl create namespace runtime
kubectl create namespace registry
kubectl create namespace governance
kubectl create namespace policy
kubectl create namespace opa
kubectl create namespace evidence
kubectl create namespace observability
kubectl create namespace certification
kubectl create serviceaccount gateway-sa -n gateway
 
kubectl create serviceaccount runtime-sa -n runtime
 
kubectl create serviceaccount governance-sa -n governance
 
kubectl create serviceaccount evidence-sa -n evidence
 
kubectl create serviceaccount opa-sa -n opa
kubectl get sa -A
kubectl get serviceaccounts -A
gcloud artifacts repositories list
gcloud auth configure-docker asia-south1-docker.pkg.dev
export IMAGE_REPO=asia-south1-docker.pkg.dev/tgs-int-odp-dev-001/odp-ar-dev
gcloud storage buckets list
gcloud storage buckets create gs://odp-policy-bundles-dev --location=asia-south1
Show more lines
gcloud storage buckets describe gs://odp-policy-bundles-dev
gcloud storage buckets list
gcloud services enable cloudkms.googleapis.com
gcloud services enable sqladmin.googleapis.com
gcloud kms keyrings create odp-keyring --location=asia-south1
gcloud sql instances create odp-postgres --database-version=POSTGRES_16 --cpu=2 --memory=4GB --region=asia-south1
gcloud sql instances create odp-postgres   --database-version=POSTGRES_16   --edition=ENTERPRISE   --tier=db-custom-2-4096   --region=asia-south1
gcloud sql databases create odp --instance=odp-postgres
bq mk odp_dataset
gcloud container clusters describe odp-cluster --region asia-south1 --format="value(workloadIdentityConfig.workloadPool)"
gcloud iam service-accounts describe   runtime-gsa@tgs-int-odp-dev-001.iam.gserviceaccount.com
gcloud iam service-accounts add-iam-policy-binding runtime-gsa@PROJECT_ID.iam.gserviceaccount.com --role roles/iam.workloadIdentityUser --member "serviceAccount:PROJECT_ID.svc.id.goog[runtime/runtime-sa]"
PROJECT_ID=tgs-int-odp-dev-001
gcloud iam service-accounts add-iam-policy-binding   runtime-gsa@${PROJECT_ID}.iam.gserviceaccount.com   --role=roles/iam.workloadIdentityUser   --member="serviceAccount:${PROJECT_ID}.svc.id.goog[runtime/runtime-sa]"
kubectl create deployment opa --image=openpolicyagent/opa -n opa
kubectl expose deployment opa --port=8181 --target-port=8181 -n opa
kubectl get pods -n opa
kubectl describe pod opa-b7778cbd9-p9dbq -n opa
kubectl get pods -n opa
kubectl logs -n opa opa-b7778cbd9-p9dbq
kubectl get deployment opa -n opa -o yaml
kubectl patch deployment opa -n opa --type='strategic' -p '
spec:
  template:
    spec:
      serviceAccountName: opa-sa
      containers:
      - name: opa
        command: ["opa"]
        args: ["run", "--server", "--addr=0.0.0.0:8181"]
        ports:
        - name: http
          containerPort: 8181
'
kubectl rollout status deployment/opa -n opa
kubectl get pods -n opa
kubectl logs -n opa deployment/opa
kubectl get deployment opa -n opa   -o jsonpath='{.spec.template.spec.serviceAccountName}{"\n"}'
kubectl get pod -n opa -l app=opa   -o jsonpath='{.items[0].spec.containers[0].args}{"\n"}'
kubectl get svc -n opa
kubectl port-forward -n opa deployment/opa 8181:8181
curl http://127.0.0.1:8181/health
kubectl port-forward -n opa deployment/opa 8181:8181
kubectl run curl-test --rm -it --restart=Never   --image=curlimages/curl --   curl -i http://opa.opa.svc.cluster.local:8181/health
ls 
mkdir -p .github/workflows/opa-policy.yml
ls
cd .github/
ls
cd workflows/
ls
vi opa-policy.yml/
git checkout -b test-opa-ci
git init 
git checkout -b test-opa-ci
git status 
