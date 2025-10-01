gcloud iam service-accounts create terraform-deployer --display-name "Terraform Deployer"
gcloud projects add-iam-policy-binding my-gcp-project \
  --member="serviceAccount:terraform-deployer@my-gcp-project.iam.gserviceaccount.com" \
  --role="roles/editor"
gcloud iam service-accounts keys create terraform-key.json \
  --iam-account terraform-deployer@my-gcp-project.iam.gserviceaccount.com
