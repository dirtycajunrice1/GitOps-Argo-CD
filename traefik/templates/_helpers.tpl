{{- define "traefik.hostname" -}}
  {{- printf "traefik-%s.cajun.pro" .Values.cluster -}}
{{- end -}}

{{- define "traefik.secretname" -}}
  {{- include "traefik.hostname" . | replace "." "-" -}}
{{- end -}}

{{- define "tfaVals" -}}
  {{- index .Values "traefik-forward-auth" . -}}
{{- end -}}
