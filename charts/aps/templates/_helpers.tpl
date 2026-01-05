{{/*
Create the name of the service account to use
*/}}
{{- define "aps.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "aps.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}