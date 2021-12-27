@extends('layouts.main')
@section('container')
    <!-- login -->
    <div class="auth">
        <div class="container">
            <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-7 col-lg-5">
                    <div class="card" style="box-shadow: -8px 12px 18px 0 rgb(25, 42, 70, 0.13); border-radius: 15px;">
                        <div class="card-body">
                            <h4 class="text-center" style="color: rgb(9, 48, 133);"><b>Login</b></h4>
                            <form>
                                <div class="mb-3">
                                  <label for="exampleInputEmail1" class="form-label" style="color: rgb(9, 48, 133);">Alamat Email</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                  <label for="exampleInputPassword1" class="form-label" style="color: rgb(9, 48, 133);">Password</label>
                                  <input type="password" class="form-control" id="exampleInputPassword1" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="row">
                                    <div class="col-6 text-left">
                                        <div class="form-group form-check">
                                            <input type="checkbox" class="form-check-input" id="remember">
                                            <label class="form-check-label ml-2" for="remember" style="color: grey; font-size: small;">Ingat Saya</label>
                                        </div>
                                    </div>
                                    <div class="col-6 text-right">
                                        <a href="forgot1.html" target="__blank" style="color: grey; font-size: small;">Lupa Password?</a>
                                    </div>
                                </div>
                                <div class="form-group my-4">
                                    <a href="/" class="btn btn-primary form-control">Masuk</a>
                                </div>
                                <p class="text-center" style="color: grey; font-size: small;">Belum mempunyai akun? <a href="/register" target="__blank" style="color: black; font-size: small;"><b>Daftar</b></a></p>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection