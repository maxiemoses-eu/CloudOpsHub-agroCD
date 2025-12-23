{{- define "aps.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "aps.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "aps.serviceAccountName" -}}
{{ if .Values.serviceAccount.name }}
{{ .Values.serviceAccount.name }}
{{ else }}
{{ include "aps.fullname" . }}
{{ end }}
{{- end }}
