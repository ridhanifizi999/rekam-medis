-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2015 pada 08.23
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_puskesmas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keluar`
--

CREATE TABLE IF NOT EXISTS `tb_keluar` (
  `no_keluar` varchar(15) NOT NULL,
  `kode_pegawai` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `total_harga` double NOT NULL,
  PRIMARY KEY (`no_keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keluar_detail`
--

CREATE TABLE IF NOT EXISTS `tb_keluar_detail` (
  `auto` int(11) NOT NULL,
  `no_keluar` varchar(15) NOT NULL,
  `kode_obat` varchar(15) NOT NULL,
  `nama_obat` varchar(35) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kunjungan`
--

CREATE TABLE IF NOT EXISTS `tb_kunjungan` (
  `no_reg` varchar(15) NOT NULL,
  `tgl_reg` date NOT NULL,
  `unit_tujuan` varchar(25) NOT NULL,
  `kode_pasien` varchar(15) NOT NULL,
  PRIMARY KEY (`no_reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kunjungan`
--

INSERT INTO `tb_kunjungan` (`no_reg`, `tgl_reg`, `unit_tujuan`, `kode_pasien`) VALUES
('REG-001', '2015-05-11', 'Dokter Umum', 'PSN0001'),
('REG-002', '2015-06-01', 'Poli Umum', 'PSN0001'),
('REG-003', '2015-06-09', 'Poli Umum', 'PSN0002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kwitansi`
--

CREATE TABLE IF NOT EXISTS `tb_kwitansi` (
  `no_kwitansi` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pasien` varchar(15) NOT NULL,
  `kode_pegawai` varchar(15) NOT NULL,
  `b_administrasi` double NOT NULL,
  `b_lain` double NOT NULL,
  `total_bayar` double NOT NULL,
  `tunai` double NOT NULL,
  `kembali` double NOT NULL,
  PRIMARY KEY (`no_kwitansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kwitansi`
--

INSERT INTO `tb_kwitansi` (`no_kwitansi`, `tanggal`, `kode_pasien`, `kode_pegawai`, `b_administrasi`, `b_lain`, `total_bayar`, `tunai`, `kembali`) VALUES
('KWT-0001', '2015-05-19', 'PSN0001', 'PGW0001', 25000, 5000, 30000, 50000, 20000),
('KWT-0002', '2015-05-24', 'PSN0001', 'PGW0001', 25000, 15000, 40000, 100000, 60000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`, `level`) VALUES
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_obat`
--

CREATE TABLE IF NOT EXISTS `tb_obat` (
  `kode_obat` varchar(15) NOT NULL,
  `nama_obat` varchar(35) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` double NOT NULL,
  PRIMARY KEY (`kode_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_obat`
--

INSERT INTO `tb_obat` (`kode_obat`, `nama_obat`, `jenis`, `satuan`, `jumlah`, `harga`) VALUES
('OBT-0001', 'Panadol', 'Kapsul', 'Butir', 180, 1500),
('OBT-0002', 'Bodrex', 'Kapsul', 'Butir', 170, 1500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasien`
--

CREATE TABLE IF NOT EXISTS `tb_pasien` (
  `kode_pasien` varchar(15) NOT NULL,
  `nama_pasien` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `pekerjaan` varchar(35) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`kode_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pasien`
--

INSERT INTO `tb_pasien` (`kode_pasien`, `nama_pasien`, `tanggal_lahir`, `jenis_kelamin`, `pekerjaan`, `alamat`, `telpon`, `tanggal`) VALUES
('PSN0001', 'Rahmat Maulana', '1988-09-13', 'Laki-laki', 'Wiraswastax', 'Jl. Rambutan, No.005', '081276374849', '2015-04-28'),
('PSN0002', 'Sari Mardiah', '1990-05-12', 'Perempuan', 'Mahasiswa', 'Pekanbaru', '082388992119', '2015-05-28'),
('PSN0003', 'Karem Tuhima', '2015-05-21', 'Laki-laki', 'Mahasiswa', 'Pekanbaru', '082388992119', '2015-05-28'),
('PSN0004', 'Gayoh Tambunan', '1994-05-24', 'Laki-laki', 'Mahasiswa', 'Jl. Tamrin Bertumpuk, No. 007', '082388992119', '2015-05-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE IF NOT EXISTS `tb_pegawai` (
  `kode_pegawai` varchar(15) NOT NULL,
  `nama_pegawai` varchar(35) NOT NULL,
  `nama_bagian` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  PRIMARY KEY (`kode_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`kode_pegawai`, `nama_pegawai`, `nama_bagian`, `tanggal_lahir`, `alamat`, `telpon`) VALUES
('PGW0001', 'Yahya Hamida', 'Apotik', '1988-09-13', 'Jl. Rambutan, No.5', '081276374849'),
('PGW0002', 'Halim Kusuma', 'Tata Usaha', '1990-05-12', 'Pekanbaru', '082388992119');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rekmed`
--

CREATE TABLE IF NOT EXISTS `tb_rekmed` (
  `no_rekmed` varchar(15) NOT NULL,
  `kode_pasien` varchar(15) NOT NULL,
  `id_unitmedis` varchar(15) NOT NULL,
  `diagnosa1` varchar(50) NOT NULL,
  `diagnosa2` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`no_rekmed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rekmed`
--

INSERT INTO `tb_rekmed` (`no_rekmed`, `kode_pasien`, `id_unitmedis`, `diagnosa1`, `diagnosa2`, `keterangan`, `tanggal`) VALUES
('RM-0001', 'PSN0001', 'DOK0001', 'Demam', 'Batuk', 'Terapi kulit dibutuhkan', '2015-05-19'),
('RM-0002', 'PSN0003', 'DOK0001', 'Demam', 'Batuk', '-', '2015-05-28'),
('RM-0003', 'PSN0004', 'DOK0001', 'Demam', 'Batuk', 'Terapi kulit dibutuhkan', '2015-06-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_resep`
--

CREATE TABLE IF NOT EXISTS `tb_resep` (
  `no_resep` varchar(15) NOT NULL,
  `no_rekmed` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`no_resep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_resep`
--

INSERT INTO `tb_resep` (`no_resep`, `no_rekmed`, `tanggal`) VALUES
(' RSP-0002', 'RM-0001', '2015-06-03'),
('RSP-0001', 'RM-0001', '2015-05-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_resep_detail`
--

CREATE TABLE IF NOT EXISTS `tb_resep_detail` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `no_resep` varchar(15) NOT NULL,
  `kode_obat` varchar(15) NOT NULL,
  `nama_obat` varchar(35) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `aturan_pakai` varchar(100) NOT NULL,
  PRIMARY KEY (`auto`),
  KEY `auto` (`auto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tb_resep_detail`
--

INSERT INTO `tb_resep_detail` (`auto`, `no_resep`, `kode_obat`, `nama_obat`, `jumlah`, `aturan_pakai`) VALUES
(3, 'RSP-0001', 'OBT-0001', 'Panadol', 20, '2x sehari'),
(4, 'RSP-0001', 'OBT-0002', 'Bodrex', 20, '2x sehari'),
(5, 'RSP-0002', 'OBT-0001', 'Panadol', 20, '2x sehari'),
(6, 'RSP-0002', 'OBT-0002', 'Bodrex', 30, '2x sehari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_unitmedis`
--

CREATE TABLE IF NOT EXISTS `tb_unitmedis` (
  `id_unitmedis` varchar(15) NOT NULL,
  `nama_unitmedis` varchar(35) NOT NULL,
  `spesialis` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  PRIMARY KEY (`id_unitmedis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_unitmedis`
--

INSERT INTO `tb_unitmedis` (`id_unitmedis`, `nama_unitmedis`, `spesialis`, `alamat`, `telpon`) VALUES
('DOK0001', 'Farhat Abbass', 'Dokter Umum', 'Jl. Tamrin Bertumpuk, No. 007', '081276374849');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
