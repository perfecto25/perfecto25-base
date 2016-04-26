class base {

$kernel = $::kernel

case downcase($kernel) { 
  'linux':    { include base::linux }
  'windows':  { include base::windows }
  default:    { include base::common }
}


notify { "applying: perfecto-25/base": }


}
