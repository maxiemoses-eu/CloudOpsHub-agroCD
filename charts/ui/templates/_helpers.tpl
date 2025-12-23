{{- define "ui.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "ui.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "ui.serviceAccountName" -}}
{{ if .Values.serviceAccount.name }}
{{ .Values.serviceAccount.name }}
{{ else }}
{{ include "ui.fullname" . }}
{{ end }}
{{- end }}
