class Config {
  static String urlAPI = 'http://syntop.poltekbangplg.ac.id/api';

  static String urlMain = 'http://syntop.poltekbangplg.ac.id/';

  String urlRegister = '$urlAPI/register';
  String urlLogin = '$urlAPI/login';
  String urlLogout = '$urlAPI/logout';

  String productList = '$urlAPI/product-list';

  String keranjangPost = '$urlAPI/keranjang-post';

  String checkoutPostById = '$urlAPI/checkout-post-by-id';
  String checkoutlitBaru = '$urlAPI/checkout-list-baru?user_id=';
  String checkoutlitProses = '$urlAPI/checkout-list-proses?user_id=';
  String checkoutlitSelesai = '$urlAPI/checkout-list-selesai?user_id=';
}
