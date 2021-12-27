@extends('layouts.main')
@section('container')
    <!-- register -->
    <div class="auth">
        <div class="container">
            <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-7 col-lg-5">
                    <div class="card " style="box-shadow: -8px 12px 18px 0 rgb(25, 42, 70, 0.13); border-radius: 15px;">
                        <div class="card-body">
                            <h4 class="text-center" style="color: rgb(9, 48, 133);"><b>Register</b></h4>
                            <form>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label" style="color: rgb(9, 48, 133);">Nama Lengkap</label>
                                    <input type="nama" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                  <label for="exampleInputEmail1" class="form-label" style="color: rgb(9, 48, 133);">Alamat Email</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label" style="color: rgb(9, 48, 133);">No HP</label>
                                    <input type="nohp" class="form-control" id="exampleInputnohp" aria-describedby="emailHelp" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                  <label for="exampleInputPassword1" class="form-label" style="color: rgb(9, 48, 133);">Password</label>
                                  <input type="password" class="form-control" id="exampleInputPassword1" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label" style="color: rgb(9, 48, 133);">Konfirmasi Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="form-group my-4">
                                    <a href="home.html" class="btn btn-primary form-control">Daftar</a>
                                </div>
                                <p class="text-center" style="color: grey; font-size: small;">Sudah mempunyai akun? <a href="/login" style="color: black; font-size: small;"><b>Masuk</b></a></p>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection