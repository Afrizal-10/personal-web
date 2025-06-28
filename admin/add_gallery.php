<?php
include('../koneksi.php');
session_start();
if (!isset($_SESSION['username'])) {
    header('location:login.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Tambah Gambar</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex flex-col min-h-screen">

    <div class="flex flex-col flex-grow max-w-7xl mx-auto w-full">

        <header class="bg-blue-900 text-white text-center py-6 shadow">
            <h1 class="text-3xl font-bold">Tambah Gambar ke Gallery</h1>
        </header>

        <div class="flex mt-8 px-4 w-full flex-none" style="min-width: 0;">

            <aside class="w-1/4 bg-white rounded shadow p-4 flex-shrink-0">
                <h2 class="text-xl font-semibold text-blue-700 mb-4 text-center">MENU</h2>
                <ul class="space-y-2 text-gray-700">
                    <li><a href="beranda_admin.php" class="block hover:text-blue-600">Beranda</a></li>
                    <li><a href="data_artikel.php" class="block hover:text-blue-600">Kelola Artikel</a></li>
                    <li><a href="data_gallery.php" class="block font-semibold text-blue-800">Kelola Gallery</a></li>
                    <li><a href="about.php" class="block hover:text-blue-600">About</a></li>
                    <li>
                        <a href="logout.php" onclick="return confirm('Apakah anda yakin ingin keluar?');"
                           class="block text-red-600 hover:underline font-medium">Logout</a>
                    </li>
                </ul>
            </aside>

            <main class="w-3/4 bg-white rounded shadow p-6 ml-6 flex-shrink-0">
                <form action="proses_add_gallery.php" method="post" enctype="multipart/form-data" class="space-y-6">
                    <div>
                        <label for="judul" class="block text-sm font-medium text-gray-700 mb-1">Judul Gambar</label>
                        <input type="text" id="judul" name="judul" required
                               class="w-full p-2 border rounded focus:outline-none focus:ring focus:border-blue-500">
                    </div>
                    <div>
                        <label for="foto" class="block text-sm font-medium text-gray-700 mb-1">Pilih Gambar</label>
                        <input type="file" id="foto" name="foto" accept="image/*" required
                               class="block w-full text-sm text-gray-600
                                      file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0
                                      file:text-sm file:font-semibold file:bg-blue-100 file:text-blue-700
                                      hover:file:bg-blue-200">
                    </div>
                    <div class="flex justify-end space-x-4">
                        <button type="submit"
                                class="bg-blue-700 text-white px-4 py-2 rounded hover:bg-blue-800 transition">Simpan</button>
                        <a href="data_gallery.php"
                           class="bg-gray-300 text-gray-700 px-4 py-2 rounded hover:bg-gray-400 transition">Batal</a>
                    </div>
                </form>
            </main>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-blue-800 text-white text-center py-4 mt-auto w-full">
        &copy; <?php echo date('Y'); ?> | Created by Afrizal
    </footer>
</body>
</html>
