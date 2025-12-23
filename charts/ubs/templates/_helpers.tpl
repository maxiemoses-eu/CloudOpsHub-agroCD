{{- define "ubs.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "ubs.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "ubs.serviceAccountName" -}}
{{ if .Values.serviceAccount.name }}
{{ .Values.serviceAccount.name }}
{{ else }}
{{ include "ubs.fullname" . }}
{{ end }}
{{- end }}
