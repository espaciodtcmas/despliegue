FROM node:lts-alpine3.19 AS builder
RUN mkdir ./home/luiszamorano
COPY ./git/ ./home/luiszamorano
WORKDIR /home/luiszamorano
RUN npm i
RUN npm run build
CMD tail -f /dev/null

FROM nginx:alpine
COPY --from=builder /home/luiszamorano/dist/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]