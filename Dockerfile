FROM node:18-bullseye-slim
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY package.json worker.js ./
RUN npm install @aws-sdk/client-s3 fluent-ffmpeg
CMD ["node", "worker.js"]