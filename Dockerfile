FROM node:22.8.0 AS base

FROM base AS deps
# Install dependencies
RUN apt update && apt install -y libc6 fuse curl bash gnupg lsb-release

WORKDIR /app

COPY . .
RUN corepack enable
RUN yarn install --immutable

RUN yarn tsc

# Create system group and user first
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 user

USER user

EXPOSE 3000

CMD ["yarn", "start"]
