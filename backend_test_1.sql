SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `finplan_test`
--

-- --------------------------------------------------------
--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` char(1) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeks untuk tabel `users`
--

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `status`) VALUES
(1, 'Frasch', 'F', 'active'),
(2, 'Garmuth', 'M', 'active'),
(3, 'Goliath\r\n', 'M', 'active'),
(4, 'Luna', 'F', 'active'),
(5, 'Zeus', 'M', 'active'),
(6, 'Aphrodite', 'F', 'active'),
(7, 'Ares', 'M', 'active'),
(8, 'Lina', 'F', 'active'),
(9, 'Lanaya', 'F', 'active'),
(10, 'Hades', 'M', 'active');


-- --------------------------------------------------------
--
-- Struktur dari tabel `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeks untuk tabel `hobbies`
--

ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Dumping data untuk tabel `hobbies`
--

INSERT INTO `hobbies` (`id`, `name`, `level`) VALUES
(1, 'Running', 8),
(2, 'Skipping', 5),
(3, 'Push Up', 10);

-- --------------------------------------------------------
--
-- Struktur dari tabel `map_user_hobby`
--

CREATE TABLE `map_user_hobby` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_hobby` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeks untuk tabel `map_user_hobby`
--

ALTER TABLE `map_user_hobby`
  ADD PRIMARY KEY (`id`),
  ADD INDEX (`id_user`),
  ADD INDEX (`id_hobby`);

--
-- Dumping data untuk tabel `map_user_hobby`
--

INSERT INTO `map_user_hobby` (`id`, `id_user`, `id_hobby`, `status`) VALUES
(1, 1, 1, 'active'),
(2, 3, 1, 'active'),
(3, 8, 3, 'deleted'),
(4, 2, 2, 'active'),
(5, 4, 1, 'deleted'),
(6, 6, 2, 'active'),
(7, 5, 3, 'active'),
(8, 8, 1, 'active'),
(9, 7, 2, 'active'),
(10, 4, 2, 'active'),
(11, 9, 3, 'deleted'),
(12, 10, 2, 'deleted'),
(13, 3, 2, 'active'),
(14, 2, 3, 'active'),
(15, 10, 2, 'active');


-- --------------------------------------------------------
--
-- Ketidakleluasaan untuk tabel `map_user_hobby`
--
ALTER TABLE `map_user_hobby`
  ADD CONSTRAINT `map_user_hobby_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `map_user_hobby_ibfk_2` FOREIGN KEY (`id_hobby`) REFERENCES `hobbies` (`id`);

COMMIT;


