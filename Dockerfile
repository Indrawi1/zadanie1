FROM node:alpine AS builder

COPY server.js /server.js


FROM node:alpine

COPY --from=builder /server.js /server.js

ENV AUTHOR="Milena Runets"
ENV PORT=8085

# Sprawdzanie stanu serwera
HEALTHCHECK --interval=5s --timeout=3s \
  CMD curl -f http://localhost:$PORT/ || exit 1

EXPOSE $PORT

CMD ["node", "/server.js"]

