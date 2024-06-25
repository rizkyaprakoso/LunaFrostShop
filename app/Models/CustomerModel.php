<?php

// App/Models/CustomerModel.php
namespace App\Models;

use CodeIgniter\Model;

class CustomerModel extends Model
{
    protected $table = 'customer';
    protected $primaryKey = 'id';
    protected $allowedFields = ['nama_lengkap', 'email', 'password', 'alamat'];

    protected $useTimestamps = false;
    // protected $createdField  = 'created_at';
    // protected $updatedField  = 'updated_at';
}

