Table kasir {
  kasir_id int [pk, increment]
  nama_kasir varchar(100)
  email_kasir varchar(100)
  no_telepon_kasir varchar(15)
}

Table customer {
  customer_id int [pk, increment]
  nama_customer varchar(100)
  email_customer varchar(100)
  no_telepon_customer varchar(15)
}

Table menu {
  menu_id int [pk, increment]
  nama_menu varchar(100)
  harga_menu decimal(10, 2)
}

Table transaksi {
  transaksi_id int [pk, increment]
  kasir_id int [ref: > kasir.kasir_id]
  customer_id int [ref: > customer.customer_id]
  menu_id int [ref: > menu.menu_id]
  tanggal_transaksi datetime
  jumlah int
  total_harga decimal(10, 2)
}
