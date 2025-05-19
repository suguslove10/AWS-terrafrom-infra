# IAM resources

resource "aws_iam_role" "AmazonEBSCSIDriverRole" {
  name               = "AmazonEBSCSIDriverRole"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::794038231860:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1:sub": "system:serviceaccount:kube-system:ebs-csi-controller-sa"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AmazonEKSLoadBalancerControllerRole" {
  name               = "AmazonEKSLoadBalancerControllerRole"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::794038231860:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/7A347C3F9FF0C647589DEA7546773A09"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-south-1.amazonaws.com/id/7A347C3F9FF0C647589DEA7546773A09:sub": "system:serviceaccount:kube-system:aws-load-balancer-controller",
          "oidc.eks.ap-south-1.amazonaws.com/id/7A347C3F9FF0C647589DEA7546773A09:aud": "sts.amazonaws.com"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_role" "aws_ec2_spot_fleet_tagging_role" {
  name               = "aws-ec2-spot-fleet-tagging-role"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "spotfleet.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "aws_load_balancer_controller_role" {
  name               = "aws-load-balancer-controller-role"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::794038231860:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1:sub": "system:serviceaccount:kube-system:aws-load-balancer-controller"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_role" "EC2_Elastic_Container_Access" {
  name               = "EC2-Elastic-Container-Access"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "eks_jump_server_role" {
  name               = "eks-jump-server-role"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "eks_nodegroup_role" {
  name               = "eks-nodegroup-role"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "eks_payroll_backend_cluster_role" {
  name               = "eks-payroll-backend-cluster-role"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "eks_payroll_backend_ng" {
  name               = "eks-payroll-backend-ng"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "eksctl_taytelar_cluster_addon_iamserviceaccou_Role1_lTIfbWrrnfAx" {
  name               = "eksctl-taytelar-cluster-addon-iamserviceaccou-Role1-lTIfbWrrnfAx"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::794038231860:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1:aud": "sts.amazonaws.com",
          "oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1:sub": "system:serviceaccount:taytelar-ns:external-dns"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_role" "EKSPodIdentiryRole" {
  name               = "EKSPodIdentiryRole"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "pods.eks.amazonaws.com"
      },
      "Action": [
        "sts:AssumeRole",
        "sts:TagSession"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_role" "ertyuiol_role_b4g19y4b" {
  name               = "ertyuiol-role-b4g19y4b"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "external_dns" {
  name               = "external-dns"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::794038231860:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-south-1.amazonaws.com/id/F8F43CA0F0EA828991C1CED7B3CC04A1:sub": "system:serviceaccount:taytelar-ns:external-dns"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_role" "taytaler_password_access" {
  name               = "taytaler-password-access"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::794038231860:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/C4EE34E1A08B0D136E7DD064BB75843E"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-south-1.amazonaws.com/id/C4EE34E1A08B0D136E7DD064BB75843E:aud": "sts.amazonaws.com"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_user" "admin" {
  name = "admin"
}

resource "aws_iam_user" "akash" {
  name = "akash"
}

resource "aws_iam_user" "akshay" {
  name = "akshay"
}

resource "aws_iam_user" "fdev" {
  name = "fdev"
}

resource "aws_iam_user" "info" {
  name = "info"
}

resource "aws_iam_user" "jilanni" {
  name = "jilanni"
}

resource "aws_iam_user" "s3_access_umesh" {
  name = "s3_access_umesh"
}

resource "aws_iam_user" "suguresh" {
  name = "suguresh"
}

resource "aws_iam_user" "vijay_dev" {
  name = "vijay-dev"
}
