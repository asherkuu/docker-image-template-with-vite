FROM node:18-alpine AS builder

RUN npm install -g pnpm

WORKDIR /app

COPY package*.json ./
COPY pnpm-lock.yaml ./

RUN pnpm install

COPY . .

RUN pnpm run build

# 

FROM node:18-alpine
    
RUN npm install -g pnpm pm2

WORKDIR /app

# COPY --from=builder /app .
COPY --from=builder /app .

EXPOSE 4173

CMD [ "pnpm", "preview" ]