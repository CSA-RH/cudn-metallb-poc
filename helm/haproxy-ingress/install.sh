#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="cudn-demo"
RELEASE="haproxy-ingress"
CHART="<CHART_REFERENCE>"

helm upgrade --install "${RELEASE}"   -n "${NAMESPACE}"   --create-namespace   -f helm/haproxy-ingress/values.yaml   "${CHART}"
