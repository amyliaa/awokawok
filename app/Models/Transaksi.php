<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class transaksi extends Model
{
    use HasFactory;

    protected $fillable=['invoice','pelanggan_id','user_id','total'];

    public function petugas():HasMany
    {
        return $this->hasMany(Petugas::class);
    }

    public function pelanggan():BelongsTo
    {
        return $this->belongsTo(Pelanggan::class);
    }

    public function user():BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
