/**
 * Copyright (c) 2025 Autonomous Innovation Technology Consultancy. All Rights Reserved.
 * * This file is the proprietary and confidential property of Autonomous Innovation
 * Technology Consultancy. Unauthorized copying of this file, via any medium, is
 * strictly prohibited.
 *
 * This code is provided for commercial use only and is not licensed under an
 * open-source license.
 *
 * For inquiries, please contact cloud.admin@autinno.com
 * Website: https://www.autinno.com/
 */

terraform {
  backend "gcs" {
    bucket                      = "${bucket}"
    impersonate_service_account = "${service_account}"
    %{ if try(prefix, null) != null }prefix = "${prefix}"%{ endif }
  }
}
provider "google" {
  impersonate_service_account = "${service_account}"
}
provider "google-beta" {
  impersonate_service_account = "${service_account}"
}
