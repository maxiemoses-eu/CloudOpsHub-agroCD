{{- define "das.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "das.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "das.serviceAccountName" -}}
{{ if .Values.serviceAccount.name }}
{{ .Values.serviceAccount.name }}
{{ else }}
{{ include "das.fullname" . }}
{{ end }}
{{- end }}
