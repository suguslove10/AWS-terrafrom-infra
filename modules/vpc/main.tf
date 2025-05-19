# VPC resources

resource "aws_vpc" "taytelar-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "taytelar-vpc"
  }
}

resource "aws_subnet" "taytelar-vpc-subnet-private1-ap-south-1a" {
  vpc_id                  = aws_vpc.taytelar-vpc.id
  cidr_block              = "10.0.128.0/20"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "taytelar-vpc-subnet-private1-ap-south-1a"
  }
}

resource "aws_subnet" "taytelar-vpc-subnet-public1-ap-south-1a" {
  vpc_id                  = aws_vpc.taytelar-vpc.id
  cidr_block              = "10.0.0.0/20"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "taytelar-vpc-subnet-public1-ap-south-1a"
  }
}

resource "aws_subnet" "taytelar-vpc-subnet-private2-ap-south-1b" {
  vpc_id                  = aws_vpc.taytelar-vpc.id
  cidr_block              = "10.0.144.0/20"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "taytelar-vpc-subnet-private2-ap-south-1b"
  }
}

resource "aws_subnet" "taytelar-vpc-subnet-public2-ap-south-1b" {
  vpc_id                  = aws_vpc.taytelar-vpc.id
  cidr_block              = "10.0.16.0/20"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "taytelar-vpc-subnet-public2-ap-south-1b"
  }
}

resource "aws_security_group" "Jenkins_SG" {
  name        = "Jenkins_SG"
  description = "Jenkins-SG"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "Jenkins_SG"
  }
}

resource "aws_security_group" "JumpboxSG" {
  name        = "JumpboxSG"
  description = "Jumpbox SG"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "JumpboxSG"
  }
}

resource "aws_security_group" "NandhuBusDokployServer_SG" {
  name        = "NandhuBusDokployServer_SG"
  description = "DokployServer SG"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "NandhuBusDokployServer_SG"
  }
}

resource "aws_security_group" "k8s_taytelar_postgres_cffbdb39e5" {
  name        = "k8s_taytelar_postgres_cffbdb39e5"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_taytelar_postgres_cffbdb39e5"
  }
}

resource "aws_security_group" "k8s_elkingressgroup_5a39f56563" {
  name        = "k8s_elkingressgroup_5a39f56563"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_elkingressgroup_5a39f56563"
  }
}

resource "aws_security_group" "k8s_taytelaringressgr_e4f5595dc8" {
  name        = "k8s_taytelaringressgr_e4f5595dc8"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_taytelaringressgr_e4f5595dc8"
  }
}

resource "aws_security_group" "Taytelar_CLuster_SG" {
  name        = "Taytelar_CLuster_SG"
  description = "Cluster-SecurityGroup"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "Taytelar_CLuster_SG"
  }
}

resource "aws_security_group" "k8s_dash_sg" {
  name        = "k8s_dash_sg"
  description = "kubectl dashboard"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_dash_sg"
  }
}

resource "aws_security_group" "Jenkins_ALB_SG" {
  name        = "Jenkins_ALB_SG"
  description = "Jenkins-ALB-SG"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "Jenkins_ALB_SG"
  }
}

resource "aws_security_group" "k8s_taytelar_buspostg_f2c2262fee" {
  name        = "k8s_taytelar_buspostg_f2c2262fee"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_taytelar_buspostg_f2c2262fee"
  }
}

resource "aws_security_group" "NadhuBusStack_SG" {
  name        = "NadhuBusStack_SG"
  description = "NandhuBus"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "NadhuBusStack_SG"
  }
}

resource "aws_security_group" "k8s_elb_a2397747c87614ad39a48b824d49d1fd" {
  name        = "k8s_elb_a2397747c87614ad39a48b824d49d1fd"
  description = "Security group for Kubernetes ELB a2397747c87614ad39a48b824d49d1fd (kubernetes-dashboard/kubernetes-dashboard-kong-proxy)"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_elb_a2397747c87614ad39a48b824d49d1fd"
  }
}

resource "aws_security_group" "k8s_elb_a679198e186944b1490f9c4c012d9dbb" {
  name        = "k8s_elb_a679198e186944b1490f9c4c012d9dbb"
  description = "Security group for Kubernetes ELB a679198e186944b1490f9c4c012d9dbb (prometheus/stable-grafana)"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_elb_a679198e186944b1490f9c4c012d9dbb"
  }
}

resource "aws_security_group" "wordpress_alb_sg" {
  name        = "wordpress_alb_sg"
  description = "Wordpress ALB"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "wordpress_alb_sg"
  }
}

resource "aws_security_group" "k8s_elkingressgroup_507fb9ace6" {
  name        = "k8s_elkingressgroup_507fb9ace6"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_elkingressgroup_507fb9ace6"
  }
}

resource "aws_security_group" "k8s_nandubus_buspostg_95c0918ab8" {
  name        = "k8s_nandubus_buspostg_95c0918ab8"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_nandubus_buspostg_95c0918ab8"
  }
}

resource "aws_security_group" "k8s_busingressgroup_b6263cb86a" {
  name        = "k8s_busingressgroup_b6263cb86a"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_busingressgroup_b6263cb86a"
  }
}

resource "aws_security_group" "k8s_elb_a1635702e393a43878de09d9c23c7055" {
  name        = "k8s_elb_a1635702e393a43878de09d9c23c7055"
  description = "Security group for Kubernetes ELB a1635702e393a43878de09d9c23c7055 (prometheus/stable-kube-prometheus-sta-prometheus)"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_elb_a1635702e393a43878de09d9c23c7055"
  }
}

resource "aws_security_group" "eks_cluster_sg_taytelar_cluster_35786099" {
  name        = "eks_cluster_sg_taytelar_cluster_35786099"
  description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "eks_cluster_sg_taytelar_cluster_35786099"
  }
}

resource "aws_security_group" "k8s_marketingingressg_6762bd0acd" {
  name        = "k8s_marketingingressg_6762bd0acd"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_marketingingressg_6762bd0acd"
  }
}

resource "aws_security_group" "k8s_busingressgroup_c566671b45" {
  name        = "k8s_busingressgroup_c566671b45"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_busingressgroup_c566671b45"
  }
}

resource "aws_security_group" "Wordpress_SG" {
  name        = "Wordpress_SG"
  description = "Wordpress-SG"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "Wordpress_SG"
  }
}

resource "aws_security_group" "k8s_elb_a85ea50120192432490618caae0d25c4" {
  name        = "k8s_elb_a85ea50120192432490618caae0d25c4"
  description = "Security group for Kubernetes ELB a85ea50120192432490618caae0d25c4 (kubernetes-dashboard/kubernetes-dashboard)"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_elb_a85ea50120192432490618caae0d25c4"
  }
}

resource "aws_security_group" "k8s_traffic_taytelarcluster_87779464c4" {
  name        = "k8s_traffic_taytelarcluster_87779464c4"
  description = "[k8s] Shared Backend SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_traffic_taytelarcluster_87779464c4"
  }
}

resource "aws_security_group" "k8s_traffic_busbookingcluster_88f7f971a3" {
  name        = "k8s_traffic_busbookingcluster_88f7f971a3"
  description = "[k8s] Shared Backend SecurityGroup for LoadBalancer"
  vpc_id      = aws_vpc.taytelar-vpc.id

  # Rules will be added later or manually
  
  tags = {
    Name = "k8s_traffic_busbookingcluster_88f7f971a3"
  }
}
