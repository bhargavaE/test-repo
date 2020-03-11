From node:alpine
WORKDIR /app
COPY package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent
RUN npm install react
COPY . .
CMD ["npm", "start"]
