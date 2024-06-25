<?php

namespace App\Controllers;

use App\Controllers\MainController;
use App\Models\BiodataModel;
use App\Models\CarouselModel;
use App\Models\PaketCategoryModel;
use App\Models\PaketModel;
use App\Models\PortofolioModel;
use App\Models\TransaksiModel;
use App\Models\CustomerModel;
use Exception;

class LandingController extends MainController
{

    public function __construct()
    {
        parent::__construct();
        $this->session = \Config\Services::session();
    }

    public function index()
    {
        // force redirect ke lokal kalau diakses dari ngrok biar tidak perlu refresh
        // if ($_SERVER['SERVER_NAME'] == 'dashing-inherently-grackle.ngrok-free.app') {
        //     header('location: http://localhost:8080');
        //     exit;
        // }

        $this->countVisitor();
        $biodata = new BiodataModel();
        $portofolio = new PortofolioModel();
        $carousel = new CarouselModel();
        $paket = new PaketModel();
        $data = $biodata->getBiodata();
        $data['carousel'] = $carousel->findAll();
        $data['title'] = 'Home';
        $data['nav_active'] = 'home';
        $data['men'] = $paket->where('is_active', 1)->where('category_id', 1)->orderBy('created_at', 'desc')->findAll();
        $data['women'] = $paket->where('is_active', 1)->where('category_id', 2)->orderBy('created_at', 'desc')->findAll();
        $data['kids'] = $paket->where('is_active', 1)->where('category_id', 3)->orderBy('created_at', 'desc')->findAll();
        $data['porto'] = $portofolio->where('is_active', 1)->findAll();
        return $this->templateLanding('landingpage/home', $data);
    }

    public function reschedule()
    {
        $params = $_REQUEST;

        $this->countVisitor();
        $biodata = new BiodataModel();
        $transaksi = new TransaksiModel();
        $data['title'] = 'Re-Schedule';
        $data['nav_active'] = 'reschedule';
        $data = $biodata->getBiodata();

        $transaksi_id = $params['nomor_transaksi'] ?? "";
        $email = $params['email'] ?? "";
        $change_date = $params['change_date'] ?? "";
        $tanggal = $params['tanggal'] ?? "";
        $jam = $params['jam'] ?? "";
        if ($transaksi_id && $email) {
            $data['_result'] = $transaksi->where('kode_transaksi', $transaksi_id)->where('email', $email)->orderBy('created_at', 'desc')->findAll();
            if (empty($data['_result'])) {
                echo "<script>alert('Data Transaksi tidak ditemukan'); location.href='/landingpage/reschedule';</script>";
            }
        } else {
            $data['_result'] = [];
        }

        if ($transaksi_id && $email && $change_date && $tanggal && $jam) {
            $transaksi->db->query('UPDATE transaksi SET tanggal = "'.$tanggal.'", jam = "'.$jam.'" WHERE kode_transaksi = "'.$transaksi_id.'" ');
            $data['_result'] = [];
            echo "<script>alert('Jadwal anda berhasil di-Reschedule!'); location.href='/landingpage/reschedule';</script>";
        }

        $data['transaksi_id'] = $transaksi_id;
        $data['email'] = $email;
        $data['nav_active'] = 'reschedule';

        return $this->templateLanding('landingpage/reschedule', $data);
    }

    public function paket()
    {
        $this->countVisitor();
        $category_id = $this->request->getGet('category');
        $katalog_id = $this->request->getGet('katalog') ?? 'Studio';
        $paket = new PaketModel();
        $category = new PaketCategoryModel();

        $biodata = new BiodataModel();
        $data = $biodata->getBiodata();
        $data['title'] = 'Shop';

        if (!$category_id) {
            $data['paket'] = $paket->where('is_active', 1)->where('katalog', $katalog_id)->orderBy('created_at', 'desc')->findAll();
            $data['active'] = 'category-all';
        } elseif ($category_id == 'promo') {
            $data['paket'] = $paket->where('is_active', 1)->where('katalog', $katalog_id)->whereNotIn('price_disc', [0])->orderBy('created_at', 'desc')->findAll();
            $data['active'] = 'category-promo';
        } else {
            $data['paket'] = $paket->where('is_active', 1)->where('katalog', $katalog_id)->where('category_id', $category_id)->orderBy('created_at', 'desc')->findAll();
            $data['active'] = 'category-' . $category_id;
        }
        $data['category'] = $category->findAll();
        $data['nav_active'] = 'paket';
        return $this->templateLanding('landingpage/paket', $data);
    }

    public function login()
    {
        if ($this->request->getMethod() === 'post') {
            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            $customerModel = new CustomerModel();
            $customer = $customerModel->where('email', $email)->where('password', $password)->first();

            if ($customer) {
                $this->session->set([
                    'id' => $customer['id'],
                    'email' => $customer['email'],
                    'password' => $customer['password'],
                    'nama_lengkap' => $customer['nama_lengkap'],
                    'alamat' => $customer['alamat'],
                    'isLoggedIn' => true,
                ]);
                return redirect()->to('/');
            } else {
                echo "<script>alert('Email/Password Anda salah silahkan coba kembali'); location.href '/login';</script>";
            }
        }

        $this->countVisitor();

        $data['nav_active'] = 'login';
        return $this->templateLanding('landingpage/login', $data);
    }

    public function register()
    {
        if ($this->request->getMethod() === 'post') {
            $nama_lengkap = $this->request->getPost('name');
            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');
            $alamat = $this->request->getPost('address');

            $customerModel = new CustomerModel();
            $customerData = [
                'nama_lengkap' => $nama_lengkap,
                'email' => $email,
                'password' => $password,
                'alamat' => $alamat,
            ];

            $customerModel->save($customerData);
            return redirect()->to('/landingpage/login');
        }

        $this->countVisitor();

        $data['nav_active'] = 'register';
        return $this->templateLanding('landingpage/register', $data);
    }

    public function logout()
    {
        echo "<script>window.localStorage.removeItem('carts')</script>";
        $this->session->destroy();
        return redirect()->to('/landingpage/login');
    }

    public function about()
    {
        $this->countVisitor();

        $data['nav_active'] = 'about';
        return $this->templateLanding('landingpage/about', $data);
    }

    public function contact()
    {
        $this->countVisitor();

        $data['nav_active'] = 'contact';
        return $this->templateLanding('landingpage/contact', $data);
    }

    public function detailPaket($id)
    {
        $this->countVisitor();
        $biodata = new BiodataModel();
        $data = $biodata->getBiodata();
        $paket = new PaketModel();
        $data['paket'] = $paket->find($id);
        $category = new PaketCategoryModel();
        $data['kategori'] = $category->find($data['paket']->category_id);
        $data['nav_active'] = 'paket';
        return $this->templateLanding('landingpage/detail_paket', $data);
    }

    public function cart()
    {
        if ($this->request->getMethod() === 'post') {
            $transaksi = new TransaksiModel();
            $input = $this->request->getPost();
            $telepon = "";
            try {
                $telepon = $input['telepon'];
            } catch (\Throwable $th) {
                //throw $th;
            }

            $data = [
                "nama" => $input['name'],
                "email" => $input['email'],
                "telepon" => $telepon,
                "address" => $input['address'],
                "paket" => $input['products'],
                "jenis_pengiriman" => $input['jenis_pengiriman'],
                "ongkir" => $input['ongkir'],
                "subtotal" => $input['subtotal_input'],
                "total" => (int) $input['subtotal_input'] + (int) $input['ongkir'],
                "kode_transaksi" =>  $transaksi->auto_generate()
            ];
    
            try {
                $transaksi->save($data);
            } catch (Exception $e) {
                return json_encode(['code' => $e->getCode(), 'messaage' => $e->getMessage()]);
            }

            echo "<script>window.localStorage.removeItem('carts')</script>";
            return redirect()->to('/landingpage/bayar?kode_transaksi='.$data['kode_transaksi']);
        }

        $this->countVisitor();
        $biodata = new BiodataModel();
        $data = $biodata->getBiodata();
        $paket = new PaketModel();
        $data['paket'] = json_encode($paket->where('is_active', 1)->orderBy('created_at', 'desc')->findAll());
        $data['nav_active'] = 'cart';
        return $this->templateLanding('landingpage/cart', $data);
    }

    public function bayar()
    {
        if ($this->request->getMethod() === 'post') {
            $transaksiModel = new TransaksiModel();
            $kode_transaksi = $this->request->getPost('kode_transaksi');
            $transaksi = $transaksiModel->where('kode_transaksi', $kode_transaksi)->first();
            if(isset($_FILES['bukti_transfer']) && $_FILES['bukti_transfer']['error'] == UPLOAD_ERR_OK) {
                // Define the upload directory and file name
                $uploadDir = './assets/upload/';
                $fileName = basename($_FILES['bukti_transfer']['name']);
                $uploadFilePath = $uploadDir . $fileName;

                // Move the uploaded file to the server
                if(move_uploaded_file($_FILES['bukti_transfer']['tmp_name'], $uploadFilePath)) {
                    // Update the transaction with the new file path
                    $transaksiModel->update($transaksi->id, ['bukti_transfer' => $uploadFilePath]);
                    echo "<script>alert('Bukti pembayaran berhasil diupload mohon menunggu 1x24 jam dari admin'); location.href = '/landingpage/orders';</script>";
                } else {
                    throw new \Exception("File upload failed.");
                }
            } else {
                throw new \Exception("No file uploaded or upload error.");
            }
        }

        try {
            $kode_transaksi = $_REQUEST['kode_transaksi'];
            $this->countVisitor();
            $biodata = new BiodataModel();
            $data = $biodata->getBiodata();

            $paket = new PaketModel();
            $transaksiModel = new TransaksiModel();
            $transaksi = $transaksiModel->where('kode_transaksi', $kode_transaksi)->first();
            $products = json_decode($transaksi->paket, true);
            foreach ($products as $k => $p) {
                $p_info = $paket->where('id', $p['id_paket'])->first();
                $products[$k]['product'] = $p_info;
            }

            $data['products'] = $products;
            $data['transaksi'] = $transaksi;
            $data['kode_transaksi'] = $kode_transaksi;
            
            $paket = new PaketModel();
            // $data['paket'] = json_encode($paket->where('is_active', 1)->orderBy('created_at', 'desc')->findAll());
            $data['nav_active'] = 'cart';
            
            return $this->templateLanding('landingpage/bayar', $data);
        } catch (\Throwable $th) {
            //throw $th;
            // echo "Error pada waktu mengambil order silahkan coba kembali nanti atau cek konfigurasi server Anda";
            // exit;

            $data['products'] = [];
            $data['transaksi'] = [];
            $data['kode_transaksi'] = "";
            $data['nav_active'] = 'cart';
            return $this->templateLanding('landingpage/bayar', $data);
        }
    }

    public function orders()
    {
        try {
            // $kode_transaksi = $_REQUEST['kode_transaksi'];
            $email = $_SESSION['email'];
            $this->countVisitor();
            $biodata = new BiodataModel();
            $data = $biodata->getBiodata();

            $paket = new PaketModel();
            $transaksiModel = new TransaksiModel();
            $transaksis = $transaksiModel->where('email', $email)->findAll();
            $transaksi_arr = [];
            $products = [];
            foreach ($transaksis as $transaksi) {
                $products = json_decode($transaksi->paket, true);
                foreach ($products as $k => $p) {
                    $p_info = $paket->where('id', $p['id_paket'])->first();
                    $products[$k]['product'] = $p_info;
                }
                $transaksi->product_v2 = $products;
                $transaksi_arr[] = $transaksi;
            }
        
            $data['products'] = $products;
            $data['transaksi'] = $transaksi_arr;
            
            $paket = new PaketModel();
            // $data['paket'] = json_encode($paket->where('is_active', 1)->orderBy('created_at', 'desc')->findAll());
            $data['nav_active'] = 'cart';
            
            return $this->templateLanding('landingpage/orders', $data);
        } catch (\Throwable $th) {
            //throw $th;
            // echo "Error pada waktu mengambil order silahkan coba kembali nanti atau cek konfigurasi server Anda";
            // exit;

            $data['products'] = [];
            $data['transaksi'] = [];
            $data['nav_active'] = 'cart';
            return $this->templateLanding('landingpage/orders', $data);
        }
    }


    public function orderdetail()
    {
        try {
            $kode_transaksi = $_REQUEST['kode_transaksi'];
            $this->countVisitor();
            $biodata = new BiodataModel();
            $data = $biodata->getBiodata();

            $paket = new PaketModel();
            $transaksiModel = new TransaksiModel();
            $transaksi = $transaksiModel->where('kode_transaksi', $kode_transaksi)->first();
            $products = json_decode($transaksi->paket, true);
            foreach ($products as $k => $p) {
                $p_info = $paket->where('id', $p['id_paket'])->first();
                $products[$k]['product'] = $p_info;
            }

            $data['products'] = $products;
            $data['transaksi'] = $transaksi;
            $data['kode_transaksi'] = $kode_transaksi;
            
            $paket = new PaketModel();
            // $data['paket'] = json_encode($paket->where('is_active', 1)->orderBy('created_at', 'desc')->findAll());
            $data['nav_active'] = 'cart';
            
            return $this->templateLanding('landingpage/orderdetail', $data);
        } catch (\Throwable $th) {
            //throw $th;
            // echo "Error pada waktu checkout silahkan coba kembali nanti atau cek konfigurasi server Anda";
            // exit;

            $data['products'] = [];
            $data['transaksi'] = [];
            $data['kode_transaksi'] = [];
            $data['nav_active'] = 'cart';
            return $this->templateLanding('landingpage/orderdetail', $data);
        }
    }

    public function checkout()
    {
        $this->countVisitor();
        $transaksi = new TransaksiModel();
        $data = $this->request->getPost();
        $data['kode_transaksi'] = $transaksi->auto_generate();

        try {
            $transaksi->save($data);
        } catch (Exception $e) {
            return json_encode(['code' => $e->getCode(), 'messaage' => $e->getMessage()]);
        }

        return json_encode([
            'code' => 200,
            'message' => 'Berhasil checkout, silahkan lakukan pembayaran',
            'kode_transaksi' => $data['kode_transaksi'],
            'data' => $data,
        ]);
    }

    public function countVisitor()
    {
        $ip    = $this->request->getIPAddress(); // Mendapatkan IP user
        $date  = date("Y-m-d"); // Mendapatkan tanggal sekarang
        $waktu = time(); //
        $timeinsert = date("Y-m-d H:i:s");

        // Cek berdasarkan IP, apakah user sudah pernah mengakses hari ini
        $s = $this->visitor->db->query("SELECT * FROM visitor WHERE ip='" . $ip . "' AND date='" . $date . "'")->getNumRows();
        $ss = isset($s) ? ($s) : 0;


        // Kalau belum ada, simpan data user tersebut ke database
        if ($ss == 0) {
            $this->visitor->db->query("INSERT INTO visitor(ip, date, hits, online, time) VALUES('" . $ip . "','" . $date . "','1','" . $waktu . "','" . $timeinsert . "')");
        }

        // Jika sudah ada, update
        else {
            $this->visitor->db->query("UPDATE visitor SET hits=hits+1, online='" . $waktu . "' WHERE ip='" . $ip . "' AND date='" . $date . "'");
        }
    }

    public function notify()
    {
        $data = json_decode(trim(file_get_contents("php://input")), true) ? json_decode(trim(file_get_contents("php://input")), true) : $this->request->getPost();
        $transaksi = new TransaksiModel();
        if ($data['status_code'] == 200) {
            $kode_transaksi_arr = explode('-', $data['order_id']);
            $kode_transaksi = $kode_transaksi_arr[0];
            $transaksi->db->query("UPDATE transaksi SET is_paid=1, paid_by='Midtrans' WHERE kode_transaksi = '".$kode_transaksi."' ");
        }
    
        http_response_code(200);
        echo json_encode('ok');
    }

    public function uploadktp()
    {
		error_reporting(0);

		$result = [
			'status' => 'E',
			'message' => 'Format yang diperbolehkan adalah png, jpg, jpeg & pdf',
			'data' => []
		];
        $file_names = $_FILES["file"]["name"];
		
		$is_valid = true;
		for ($i = 0; $i < count($file_names); $i++) {
			$file_name = $file_names[$i];
			$extension = end(explode(".", $file_name));
			$original_file_name = pathinfo($file_name, PATHINFO_FILENAME);
			$file_url = $original_file_name . "-" . date("YmdHis") . "." . $extension;
			if (!in_array($extension, ['pdf', 'jpg', 'jpeg', 'png'])) {
				$is_valid = false;
				break;
			}
		}

		if ($is_valid == true) {
			$data = [];
			for ($i = 0; $i < count($file_names); $i++) {
				$file_name = $file_names[$i];
				$extension = end(explode(".", $file_name));
				$original_file_name = pathinfo($file_name, PATHINFO_FILENAME);
				$file_url = $original_file_name . "-" . date("YmdHis") . "." . $extension;
				
				move_uploaded_file($_FILES["file"]["tmp_name"][$i], './assets/upload/' . $file_url);
				$data = $file_url;
			}

			$result = [
				'status' => 'S',
				'message' => 'Berhasil',
				'data' => $data
			];
		}

		echo json_encode($result);
		exit;
    }
}
