# Gunakan base image Nginx
FROM nginx:alpine

# Hapus konfigurasi default Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Salin file konfigurasi Nginx yang baru
COPY nginx.conf /etc/nginx/conf.d

# Salin semua file proyek ke direktori Nginx default
COPY . /usr/share/nginx/html

# Expose port 80 untuk Nginx
EXPOSE 80

# Perintah untuk menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
