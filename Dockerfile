# 1. Dùng Java 21 làm nền
FROM eclipse-temurin:21-jdk-alpine

# 2. Tạo thư mục làm việc trong container
WORKDIR /app

# 3. Copy file JAR đã build vào trong container
# (Lưu ý: Tên file phải khớp với file trong build/libs của bạn)
COPY build/libs/re-shopping-cart-web-app-0.0.1-SNAPSHOT.jar app.jar

# 4. Báo rằng web chạy ở cổng 8080
EXPOSE 8080

# 5. Lệnh chạy web
ENTRYPOINT ["java", "-jar", "app.jar"]