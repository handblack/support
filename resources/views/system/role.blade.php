@extends('layouts.app')

@section('container')
<div class="card">
    <div class="card-header">
        <div class="card-title">Roles</div>
    </div>
    <div class="card-body">
        <table class="table">
            <thead>
                <tr>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($result as $item)
                    <tr>
                        <td>{{ $item->rolename }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection