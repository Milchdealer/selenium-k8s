
{{/* Create the hub image */}}
{{- define "selenium-hub-image" -}}
{{ printf "%s:%s" .Values.images.seleniumHub.repository .Values.images.seleniumHub.tag }}
{{- end -}}

{{/* Create the firefox node image */}}
{{- define "selenium-firefox-image" -}}
{{ printf "%s:%s" .Values.images.nodes.firefox.repository .Values.images.nodes.firefox.tag }}
{{- end -}}

{{/* Create the chrome node image */}}
{{- define "selenium-chrome-image" -}}
{{ printf "%s:%s" .Values.images.nodes.chrome.repository .Values.images.nodes.chrome.tag }}
{{- end -}}


{{/*
Common labels
*/}}
{{- define "selenium-scraper.labels" -}}
app.kubernetes.io/name: {{ include "selenium-scraper.name" . }}
helm.sh/chart: {{ include "selenium-scraper.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
