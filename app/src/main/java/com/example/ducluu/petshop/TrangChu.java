package com.example.ducluu.petshop;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationBarView;

public class TrangChu extends AppCompatActivity {
    Button btnsanpham,btnthucan,btnthuoc;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_trangchu);

        BottomNavigationView bt  = findViewById(R.id.bottom_navigation);

        bt.setSelectedItemId(R.id.navigation_home);
        bt.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {

                switch (item.getItemId()){
                    case R.id.navigation_home:

                        break;
                    case R.id.navigation_cart:
                        Intent giohang = new Intent(TrangChu.this,GioHang.class);
                        startActivity(giohang);
                        break;
                    case R.id.navigation_chat:
                        Intent trochuyen = new Intent(TrangChu.this,TroChuyen.class);
                        startActivity(trochuyen);
                        break;
                    case R.id.navigation_notifications:
                        Intent thongbao = new Intent(TrangChu.this,ThongBao.class);
                        startActivity(thongbao);
                        break;
                    case R.id.navigation_person:
                        Intent canhan = new Intent(TrangChu.this,NguoiDung.class);
                        startActivity(canhan);
                        break;

                }


                return true;
            }
        });
        btnsanpham = findViewById(R.id.btn_muapet_home);
        btnsanpham.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(TrangChu.this, SanPham.class);
                startActivity(intent);
            }
        });
        btnthucan = findViewById(R.id.btn_thucan_home);
        btnthucan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(TrangChu.this, ThucAn.class);
                startActivity(intent);
            }
        });
        btnthuoc = findViewById(R.id.btn_thuocthuy_home);
        btnthuoc.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(TrangChu.this, ThuocThuY.class);
                startActivity(intent);
            }
        });
    }
}