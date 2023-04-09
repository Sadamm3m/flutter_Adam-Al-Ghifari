## 20_Flutter State Management (Provider)
#### Pada minggu kali ini kita belajar mengenai state provider State management 
adalah sebuah cara untuk mengatur data / state kita bekerja, bisa juga untuk memisahkan antara logic dan view, dimana logic tersebut juga bisa reusable.
### Jenis-jenis State Management Flutter
- Provider 

    Provider merupakan state management yang paling sederhana dan mudah digunakan. Provider menyediakan sebuah teknik mengolah state yang dapat digunakan untuk memanage data didalam aplikasi
- Riverpod 

    Riverpod mirip dengan provider yang compile-safe untuk digunakan dan teruji (testable). Kamu tidak akan menemukan ProviderNotFoundException atau error dalam menangani proses dalam mengelola state.
- Redux 

    Bagi kamu yang web developer, mungkin kamu sudah tidak asing dengan yang namanya redux. Redux adalah arsitektur aliran data searah yang memudahkan pengembangan, pemeliharaan, dan pengujian aplikasi.
- BLoC 

    BLoC atau Business Logic Component adalah design pattern yang membantu kamu untuk memisahkan presentation dengan business logic. Sehingga komponen pada project terbagi menjadi presentational component, BLoC, dan backend.
- GetX 

    GetX merupakan salah satu pilihan terbaik untuk state management yang memiliki performa tinggi, memiliki injection dependency yang cerdas, serta memiliki manajemen route yang cepat dan praktis. GetX tidak akan memberatkan aplikasi kamu, meskipun memiliki fitur yang banyak, namun masing-masing fitur berada dalam container terpisah dan akan mulai dijalankan setelah dipakai. Misal, jika kamu hanya menggunakan state management, maka hanya state management lah yang akan di compile, tidak termasuk route dan lainnya.
