<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TheLoaiController;
use App\Http\Controllers\LoaiTinController;
use App\Http\Controllers\TinTucController;
use App\Http\Controllers\BinhLuanController;
use App\Http\Controllers\PageControllers;
use App\Http\Controllers\BaiTapController;
use App\Http\Controllers\VideoController;

/**Phần Page */

// trang chủ
Route::get('/', [PageControllers::class, 'index'])->name('trangchu');
Route::get('/trangchu', [PageControllers::class, 'index'])->name('trangchu');

//Chi tiết tin tức 
Route::get('/tintuc/{id}/{tieudekhongdau}', [PageControllers::class, 'ChiTietTinTuc'])->name('chitiettintuc');
//Bình luận trong tin tức
Route::post('/tintuc/{id}/{tieudekhongdau}', [PageControllers::class, 'postBinhLuan'])->name('binluan');

//Danh sách tin tức theo thể loại
Route::get('/theloai/{id}/{tenkhongdau}', [PageControllers::class, 'TheLoai'])->name('thelloai');

// Danh sách tin tức theo loại tin
Route::get('/loaitin/{id}/{tenkhongdau}', [PageControllers::class, 'Loaitin'])->name('loaitin');


// tìm kiếm tin tức theo từ khóa
Route::get('/tim-kiem', [PageControllers::class, 'TimKiem'])->name('timkiem');

// Danh sách video
Route::get('/video', [PageControllers::class, 'danhSachVideo'])->name('video');


// Đăng nhập
Route::get('/dangnhap', [PageControllers::class, 'dangnhap'])->name('dangnhap');
Route::post('/dangnhap', [PageControllers::class, 'postDangNhap'])->name('dangnhap');

//Đăng xuất
Route::get('/dangxuat', [PageControllers::class, 'dangxuat'])->name('dangxuat');

// Đăng ký
Route::get('/dangky', [PageControllers::class, 'getDangKy'])->name('dangky');
Route::post('/dangky', [PageControllers::class, 'postDangKy'])->name('dangky');

// thông tin tài khoản
Route::get('/thong-tin-tai-khoan', [PageControllers::class, 'thongTinTaiKhoan'])->name('thongtinchitietcanhan');
Route::post('/thong-tin-tai-khoan', [PageControllers::class, 'postThongTinTaiKhoan']);

// Đổi mật khẩu
Route::get('/doi-mat-khau', [PageControllers::class, 'doiMatKhau'])->name('page_doimatkhau');
Route::post('/doi-mat-khau', [PageControllers::class, 'postDoiMatKhau'])->name('page_doimatkhau');



/**Phần Admin */

// đăng nhập admin
Route::get('/admin-dangnhap', [UserController::class, 'getDangNhapAdmin'])->name('dangnhapadmin');
Route::post('/admin-dangnhap', [UserController::class, 'postDangNhapAdmin'])->name('dangnhapadmin');;

// đăng xuất admin
Route::get('/admin-dangxuat', [UserController::class, 'getDangXuatAdmin'])->name('dangxuatadmin');;


Route::prefix('admin')->middleware('adminLogin')->group(function(){
    
    //Trang admin
    Route::get('/', [HomeController::class, 'index'])->name('admin');

    // Đổi mật khẩu admin
    Route::get('/doimatkhau', [HomeController::class, 'DoiMatKhau'])->name('doimatkhau');
    Route::post('/doimatkhau', [HomeController::class, 'postDoiMatKhau'])->name('doimatkhau');

    // Xem thông tin tài khoản và cập nhật
    Route::get('/thongtinnguoidung', [HomeController::class, 'thongTinNguoiDung'])->name('thongtin');
    Route::post('/thongtinnguoidung', [HomeController::class, 'post_thongTinNguoiDung']);


    // quản lý users
    Route::prefix('user')->name('users.')->group(function(){
        // danh sách users
        Route::get('/', [UserController::class, 'index'])->name('index');

        // thêm users(Thêm người viết tin)
        Route::get('them', [UserController::class, 'getThemUser'])->name('them');
        Route::post('them', [UserController::class, 'postThemUser'])->name('them');;

        // Sửa users
        Route::get('sua/{id}', [UserController::class, 'getSuaUser'])->name('edit');
        Route::post('sua/{id}', [UserController::class, 'postSuaUser'])->name('post-edit');

        // Xóa user
        Route::get('xoa/{id}', [UserController::class, 'deleteUser'])->name('delete');
    });

    // Quản lý thể loại
    Route::prefix('theloai')->name('theloai.')->group(function(){
        // danh sách thể loại
        Route::get('/', [TheLoaiController::class, 'index'])->name('index');

        // thêm thể loại
        Route::get('them', [TheLoaiController::class, 'getThemTheLoai'])->name('them');
        Route::post('them', [TheLoaiController::class, 'postThemTheLoai'])->name('them');;

        // sửa thê loại
        Route::get('sua/{id}', [TheLoaiController::class, 'getSuaTheLoai'])->name('sua');
        Route::post('sua/{id}', [TheLoaiController::class, 'postSuaTheLoai'])->name('post-edit');

        // xóa thể loại
        Route::get('xoa/{id}', [TheLoaiController::class, 'deleteTheLoai'])->name('xoa');
    });

    // Quản lý video
    Route::prefix('video')->name('video.')->group(function(){
        // danh sách video
        Route::get('/', [VideoController::class, 'index'])->name('index');

        // Thêm video 
        Route::get('them', [VideoController::class, 'getThemVideo'])->name('them');
        Route::post('them', [VideoController::class, 'postThemVideo'])->name('post-them');;

        // sửa video
        Route::get('sua/{id}', [VideoController::class, 'getSuaVideo'])->name('sua');
        Route::post('sua/{id}', [VideoController::class, 'postSuaVideo'])->name('post-edit');

        // xóa video
        Route::get('xoa/{id}', [VideoController::class, 'deleteVideo'])->name('xoa');
    });


    // Quản lý loại tin
    Route::prefix('loaitin')->name('loaitin.')->group(function(){
        // danh sách loại tin
        Route::get('/', [LoaiTinController::class, 'index'])->name('index');

        // thêm loại tin
        Route::get('them', [LoaiTinController::class, 'getThemLoaiTin'])->name('them');
        Route::post('them', [LoaiTinController::class, 'postThemLoaiTin'])->name('them');;

        // sửa loại tin
        Route::get('sua/{id}', [LoaiTinController::class, 'getSuaLoaiTin'])->name('sua');
        Route::post('sua/{id}', [LoaiTinController::class, 'postSuaLoaiTin'])->name('post-edit');

        // xóa loại tin
        Route::get('xoa/{id}', [LoaiTinController::class, 'deleteLoaiTin'])->name('xoa');
    });

    // Quản lý tin tức
    Route::prefix('tintuc')->name('tintuc.')->group(function(){
        // danh sách tin tức
        Route::get('/', [TinTucController::class, 'index'])->name('index');
        
        // thêm tin tức
        Route::get('them', [TinTucController::class, 'getThemTinTuc'])->name('them');
        Route::post('them', [TinTucController::class, 'postThemTinTuc'])->name('them');;

        // sửa tin tức
        Route::get('sua/{id}', [TinTucController::class, 'getSuaTinTuc'])->name('sua');
        Route::post('sua/{id}', [TinTucController::class, 'postSuaTinTuc'])->name('post-edit');

        // xóa tin tức
        Route::get('xoa/{id}', [TinTucController::class, 'deleteTinTuc'])->name('xoa');
    });


    // Quản lý bình luận
    Route::prefix('binhluan')->name('binhluan.')->group(function(){
        // danh sách bình luận
        Route::get('/', [BinhLuanController::class, 'index'])->name('index');

        // xóa bình luận
        Route::get('xoa/{id}', [BinhLuanController::class, 'deleteBinhLuan'])->name('xoa');
    });

});

