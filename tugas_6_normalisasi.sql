CREATE DATABASE apotek_klik24;
USE apotek_klik24;

CREATE TABLE data_apotek (
id_apotek INT PRIMARY KEY AUTO_INCREMENT,
nama_apotek VARCHAR(100) NOT NULL,
alamat_apotek VARCHAR(150) NOT NULL,
no_telp VARCHAR(15) UNIQUE NOT NULL,
no_fax VARCHAR(15) UNIQUE NOT NULL,
status_apotek ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM data_apotek;

CREATE TABLE jabatan (
id_jabatan INT PRIMARY KEY AUTO_INCREMENT,
nama_jabatan VARCHAR(50) NOT NULL,
status_jabatan ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM jabatan;

CREATE TABLE karyawan (
id_karyawan VARCHAR(50) PRIMARY KEY NOT NULL,
id_jabatan INT,
nik BIGINT UNIQUE NOT NULL,
nama_karyawan VARCHAR(100) NOT NULL,
alamat VARCHAR(150) NOT NULL,
no_telp VARCHAR(20) UNIQUE NOT NULL,
email VARCHAR (100) UNIQUE NOT NULL,
username VARCHAR (100) UNIQUE NOT NULL,
pass VARCHAR (100) NOT NULL,
id_bank INT (20) NOT NULL,
no_rekening INT NOT NULL,
jenis_kelamin ENUM("Laki-Laki","Perempuan") NOT NULL,
status_karyawan ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM karyawan;

CREATE TABLE satuan (
id_satuan INT PRIMARY KEY AUTO_INCREMENT,
nama_satuan VARCHAR(20) NOT NULL,
keterangan VARCHAR(100),
status_satuan ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM satuan;

CREATE TABLE gudang (
id_gudang INT PRIMARY KEY AUTO_INCREMENT,
nama_gudang VARCHAR(50) NOT NULL,
jumlah_lantai INT,
alamat VARCHAR (100) NOT NULL,
keterangan VARCHAR (100),
status_gudang ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM gudang;

CREATE TABLE rak (
id_rak INT PRIMARY KEY AUTO_INCREMENT,
nama_rak VARCHAR(50) NOT NULL,
jumlah_tingkat INT,
id_gudang INT NOT NULL,
keterangan VARCHAR (100),
status_rak ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM rak;

CREATE TABLE barang (
id_barang INT PRIMARY KEY AUTO_INCREMENT,
nama_barang VARCHAR(50) NOT NULL,
barcode VARCHAR(50) NOT NULL,
id_satuan INT NOT NULL,
id_rak INT NOT NULL,
harga DECIMAL(15,2) NOT NULL,
stok INT NOT NULL,
status_barang ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM barang;

CREATE TABLE bank (
id_bank INT PRIMARY KEY AUTO_INCREMENT,
nama_bank VARCHAR(50) NOT NULL,
status_bank ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM bank;

CREATE TABLE supplier (
id_supplier INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nama_supplier VARCHAR(100) NOT NULL,
no_telp VARCHAR(20) UNIQUE NOT NULL,
alamat VARCHAR(150) NOT NULL,
email VARCHAR (100) UNIQUE NOT NULL,
id_bank INT (20) NOT NULL,
no_rekening INT NOT NULL,
status_supplier ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM supplier;

CREATE TABLE pelanggan (
id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
nama_pelanggan VARCHAR(100) NOT NULL,
nik BIGINT UNIQUE NOT NULL,
alamat VARCHAR(150) NOT NULL,
no_telp VARCHAR(20) UNIQUE NOT NULL,
email VARCHAR (100) UNIQUE NOT NULL,
status_pelanggan ENUM("Aktif","Tidak Aktif") NOT NULL,
last_update TIMESTAMP NOT NULL
);
SHOW COLUMNS FROM pelanggan;

CREATE TABLE transaksi (
id_transaksi BIGINT PRIMARY KEY AUTO_INCREMENT,
jenis_transaksi ENUM ("Resep","Non Resep") NOT NULL,
id_karyawan VARCHAR (50) NOT NULL,
id_pelanggan INT NOT NULL,
id_barang INT NOT NULL,
jumlah INT NOT NULL,
jam_transaksi TIMESTAMP NOT NULL,
status_transaksi ENUM("Aktif","Tidak Aktif") NOT NULL
);
SHOW COLUMNS FROM transaksi;

SHOW TABLES FROM apotek_klik24;