terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}


provider "newrelic" {
  account_id = 4438281
  api_key = "NRAK-AS4LFP7YQNLIE128K6VFDPUEMV0"    # usually prefixed with 'NRAK'
  region = "US"                        # Valid regions are US and EU
}  