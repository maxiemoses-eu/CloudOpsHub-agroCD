{{- define "dis.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "dis.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "dis.serviceAccountName" -}}
{{ if .Values.serviceAccount.name }}
{{ .Values.serviceAccount.name }}
{{ else }}
{{ include "dis.fullname" . }}
{{ end }}
{{- end }}
