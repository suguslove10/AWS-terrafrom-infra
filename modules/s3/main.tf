# S3 buckets

resource "aws_s3_bucket" "amenities_nandubus_images" {
  bucket = "amenities-nandubus-images"
}

resource "aws_s3_bucket_ownership_controls" "amenities_nandubus_images_ownership" {
  bucket = aws_s3_bucket.amenities_nandubus_images.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "amenities_nandubus_prod_images" {
  bucket = "amenities-nandubus-prod-images"
}

resource "aws_s3_bucket_ownership_controls" "amenities_nandubus_prod_images_ownership" {
  bucket = aws_s3_bucket.amenities_nandubus_prod_images.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "cordestitch" {
  bucket = "cordestitch"
}

resource "aws_s3_bucket_ownership_controls" "cordestitch_ownership" {
  bucket = aws_s3_bucket.cordestitch.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "daily_company_report_excel" {
  bucket = "daily-company-report-excel"
}

resource "aws_s3_bucket_ownership_controls" "daily_company_report_excel_ownership" {
  bucket = aws_s3_bucket.daily_company_report_excel.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "nandubus_images" {
  bucket = "nandubus-images"
}

resource "aws_s3_bucket_ownership_controls" "nandubus_images_ownership" {
  bucket = aws_s3_bucket.nandubus_images.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "nandubus_prod_images" {
  bucket = "nandubus-prod-images"
}

resource "aws_s3_bucket_ownership_controls" "nandubus_prod_images_ownership" {
  bucket = aws_s3_bucket.nandubus_prod_images.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "nb_psql_dumps" {
  bucket = "nb-psql-dumps"
}

resource "aws_s3_bucket_ownership_controls" "nb_psql_dumps_ownership" {
  bucket = aws_s3_bucket.nb_psql_dumps.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "postgres_devbackup" {
  bucket = "postgres-devbackup"
}

resource "aws_s3_bucket_ownership_controls" "postgres_devbackup_ownership" {
  bucket = aws_s3_bucket.postgres_devbackup.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "postgres_prodbackup" {
  bucket = "postgres-prodbackup"
}

resource "aws_s3_bucket_ownership_controls" "postgres_prodbackup_ownership" {
  bucket = aws_s3_bucket.postgres_prodbackup.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "product_images_2024" {
  bucket = "product-images-2024"
}

resource "aws_s3_bucket_ownership_controls" "product_images_2024_ownership" {
  bucket = aws_s3_bucket.product_images_2024.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "product_reviews_2024" {
  bucket = "product-reviews-2024"
}

resource "aws_s3_bucket_ownership_controls" "product_reviews_2024_ownership" {
  bucket = aws_s3_bucket.product_reviews_2024.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "s2c_crm_documents" {
  bucket = "s2c-crm-documents"
}

resource "aws_s3_bucket_ownership_controls" "s2c_crm_documents_ownership" {
  bucket = aws_s3_bucket.s2c_crm_documents.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "seabed2crest_static_site" {
  bucket = "seabed2crest-static-site"
}

resource "aws_s3_bucket_ownership_controls" "seabed2crest_static_site_ownership" {
  bucket = aws_s3_bucket.seabed2crest_static_site.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
