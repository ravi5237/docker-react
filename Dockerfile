FROM node:alpine as builder
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 3000
COPY --from=builder /app/build /usr/share/nginx/html

#AKIAWFO24GOLW7XCLDVB
#/3z+O4WZyGyHSgW4pp7A122EuhU3hT/Gvcef7lK3
#jpp0!|BIxzRq