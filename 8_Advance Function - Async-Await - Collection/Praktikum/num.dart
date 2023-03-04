enum TipeBangunDatar {
    persegi,
    persegiPanjang,
    segitigaSamaSisi,
}

class BangunDatar {
    TipeBangunDatar tipeBangunDatar;
    double sisi;
    double panjang;
    double lebar;
    double alas;
    double tinggi;

    BangunDatar({
        required this.tipeBangunDatar,
        this.sisi = 0,
        this.panjang = 0,
        this.lebar = 0,
        this.alas = 0,
        this.tinggi = 0,
    });

    void luas() {
        if(this.tipeBangunDatar == TipeBangunDatar.persegi) {
            print(this.sisi * this.sisi);
        } else if(this.tipeBangunDatar == TipeBangunDatar.persegiPanjang) {
            print(this.panjang * this.lebar);
        } else if(this.tipeBangunDatar == TipeBangunDatar.segitigaSamaSisi) {
            print(this.alas * this.tinggi / 2);
        }
    }

    void keliling() {
        if(this.tipeBangunDatar == TipeBangunDatar.persegi) {
            print(4 * this.sisi);
        } else if(this.tipeBangunDatar == TipeBangunDatar.persegiPanjang) {
            print(2 * (this.panjang + this.lebar));
        } else if(this.tipeBangunDatar == TipeBangunDatar.segitigaSamaSisi) {
            print(3 * this.alas);
        }
    }
}

void main() {
    BangunDatar bd1 = BangunDatar(tipeBangunDatar: TipeBangunDatar.persegi, sisi: 3);
    bd1.luas();
    bd1.keliling();

    BangunDatar bd2 = BangunDatar(tipeBangunDatar: TipeBangunDatar.persegiPanjang, panjang: 3, lebar: 5);
    bd2.luas();
    bd2.keliling();

    BangunDatar bd3 = BangunDatar(tipeBangunDatar: TipeBangunDatar.segitigaSamaSisi, alas: 3, tinggi: 5);
    bd3.luas();

    BangunDatar bd4 = BangunDatar(tipeBangunDatar: TipeBangunDatar.segitigaSamaSisi, alas: 3);
    bd4.keliling();
}