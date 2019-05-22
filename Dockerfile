FROM node
label maintianer nanda
RUN npm install -y express --save
RUN npm install body-parser --save
copy node.js /nodeserver/node.js
copy data.json /nodeserver/node.js
RUN chmod +x /nodeserver/node.js
EXPOSE 9000
workdir /nodeserver
cmd node /nodeserver/node.js
