FROM node:14
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm install --quiet
ENV NODE_ENV production
ENTRYPOINT [ "npm", "start" ]