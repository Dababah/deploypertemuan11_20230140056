# Menggunakan base image JDK 25 sesuai dengan versi Java di projekmu
FROM eclipse-temurin:25-jdk-alpine

# Set direktori kerja di dalam container
WORKDIR /app

# Salin file .jar hasil build Maven ke dalam container dan ubah namanya menjadi app.jar
COPY target/pertemuan11-0.0.1-SNAPSHOT.jar app.jar

# Ekspos port yang digunakan aplikasi (sesuaikan dengan server.port di application.properties)
# Jika kamu mengubah ke 8081 di langkah sebelumnya, ganti menjadi 8081
EXPOSE 9091

# Perintah untuk menjalankan aplikasi
ENTRYPOINT ["java", "-jar", "app.jar"]
# Menggunakan tanda bintang (*) agar otomatis mendeteksi file jar apa pun
