import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(3031);

  const server = app.getHttpServer();
  const address = server.address();

  if (typeof address !== 'string') {
    console.log(`Server is running on ${address.address}:${address.port}`);
  }
}
bootstrap();
