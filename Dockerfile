FROM alpine
WORKDIR /usr
COPY package.json package.json
COPY tsconfig.json tsconfig.json
COPY src ./src
RUN ls -a
RUN apk add --update nodejs npm
RUN npm install
EXPOSE 30303 60606
CMD ["npm", "run", "dev"]
