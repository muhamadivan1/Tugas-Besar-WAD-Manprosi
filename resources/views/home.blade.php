@extends('layouts.main')
@section('container')
    <!-- Pesan -->
    <div class="auth">
        <div class="container">
            <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-7 col-lg-5">
                    <div class="card " style="box-shadow: -8px 12px 18px 0 rgb(25, 42, 70, 0.13); border-radius: 15px;">
                        <div class="card-body">
                            <h4 class="text-center" style="color: rgb(9, 48, 133);"><b>Pesan Tiket</b></h4>
                            <form>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label" style="color: rgb(9, 48, 133);">Nama</label>
                                    <input type="nama" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                  <label for="exampleInputEmail1" class="form-label" style="color: rgb(9, 48, 133);">Rute Awal</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label" style="color: rgb(9, 48, 133);">Rute Akhir</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                  <label for="exampleInputPassword1" class="form-label" style="color: rgb(9, 48, 133);">Jumlah Kursi</label>
                                  <input type="number" class="form-control" id="kursi" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label" style="color: rgb(9, 48, 133);">Jadwal Keberangkatan</label>
                                    <input type="date" class="form-control" id="jadwal" style="background-color: rgb(238, 238, 238);">
                                </div>
                                <div class="form-group my-4">
                                    <a href="/" class="btn btn-primary form-control">Pesan</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection