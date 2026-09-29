# Resource: GKE Cluster
resource "google_container_cluster" "gke_cluster" {
  name     = "${local.name}-gke-cluster"
  location = var.gcp_region1

  node_locations = ["us-central1-a"]

  remove_default_node_pool = true
  initial_node_count       = 1
  network = google_compute_network.myvpc.self_link
  subnetwork = google_compute_subnetwork.mysubnet.self_link
  deletion_protection = false
}
