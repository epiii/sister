<?php
	sleep(2);
	require_once 'dbcon.php';
	$out  = array();
	$user = $_POST['userTB'];
	$pass = base64_encode($_POST['pass2TB']);
	
	// authentication login 
	$s1   = 'SELECT lg.*,lv.keterangan as level 
			from 
				kon_login lg,
				kon_level lv
			where
				lg.id_level = lv.id_level 
				and lg.username = "'.$user.'" 
				and lg.password ="'.$pass.'"';
	$e1   = mysql_query($s1) or die(mysql_error());
	$n    = mysql_num_rows($e1);

	if($n!=0){
		$r1 = mysql_fetch_assoc($e1);
		// loop grup modul
		$s2 = 'SELECT * from kon_grupmodul';
		$e2 = mysql_query($s2);
		
		$grupmodulArr = array();
		while ($r2 = mysql_fetch_assoc($e2)) {
			// loop modul
			$s3 = 'SELECT
						md.id_modul,
						md.keterangan,
						md.kode,
						md.modul,
						md.size,
						i.icon,
						w.warna,
						CASE
							WHEN tbmd.id_modul >0 THEN
								1
							ELSE
								0
						END AS statmod
					FROM
						kon_modul md
						left join kon_warna w on w.id_warna = md.warna
						left join kon_icon i on i.id_icon = md.icon
						LEFT JOIN (
							SELECT
								md.id_modul
							FROM
								kon_modul md
								LEFT JOIN kon_grupmenu gm ON gm.id_modul = md.id_modul
								LEFT JOIN kon_menu mn ON mn.id_grupmenu = gm.id_grupmenu
								LEFT JOIN kon_privillege p ON p.id_menu = mn.id_menu
							WHERE	
								p.id_login = '.$r1['id_login'].'
							GROUP BY
								md.id_modul
						) tbmd ON tbmd.id_modul = md.id_modul
					WHERE
						md.id_grupmodul = '.$r2['id_grupmodul'];
			// print_r($s3);exit();	
			$e3       = mysql_query($s3);	
			$modulArr = array(); 
			while ($r3 = mysql_fetch_assoc($e3)) {
				// loop grup menu
				$s4 = 'SELECT
							gm.id_grupmenu,
							gm.size,
							gm.grupmenu
						FROM
							kon_modul md
							LEFT JOIN kon_grupmenu gm ON gm.id_modul = md.id_modul
							LEFT JOIN kon_menu mn ON mn.id_grupmenu = gm.id_grupmenu
							LEFT JOIN kon_privillege p ON p.id_menu = mn.id_menu
						WHERE	
							p.id_login = '.$r1['id_login'].' and
							gm.id_modul = '.$r3['id_modul'].'
						GROUP BY
							gm.id_grupmenu';
				// print_r($s4);exit();	
				$e4          = mysql_query($s4);
				$grupmenuArr = array();
				while ($r4=mysql_fetch_assoc($e4)) {
					// loop menu
					$s5 	 = 'SELECT
									mn.id_menu,
									mn.menu,
									mn.link,
									mn.size,
									w.warna,
									i.icon,
									IF(tbmnu.id_menu is NOT NULL,1,0)statmenu
								FROM
									kon_menu mn 
									LEFT JOIN kon_icon i ON i.id_icon = mn.icon
									LEFT JOIN kon_warna w ON w.id_warna = mn.warna
									LEFT JOIN kon_grupmenu gm ON gm.id_grupmenu= mn.id_grupmenu
									LEFT JOIN (
										SELECT
											id_menu
										FROM
											kon_privillege
										WHERE
											id_login = '.$r1['id_login'].'
									)tbmnu on tbmnu.id_menu = mn.id_menu
								WHERE
									mn.id_grupmenu = '.$r4['id_grupmenu'];
					
					// var_dump($s5);exit();
					$e5      = mysql_query($s5);
					$menuArr = array();
					while ($r5=mysql_fetch_assoc($e5)) {
						$menuArr[]=$r5;
					}
					$grupmenuArr[]=array(
						'grupmenu' =>$r4['grupmenu'],
						'size'     =>$r4['size'],
						'menu'     =>$menuArr
					);
				}
				$modulArr[] = array(
					'id_modul'   =>$r3['id_modul'],
					'keterangan' =>$r3['keterangan'],
					'kode'       =>$r3['kode'],
					'modul'      =>$r3['modul'],
					'icon'       =>$r3['icon'],
					'warna'      =>$r3['warna'],
					'size'       =>$r3['size'],
					'statmod'    =>$r3['statmod'],
					'grupmenu'   =>$grupmenuArr
				);
			}
			$grupmodulArr[] = array(
				'grupmodul' =>$r2['grupmodul'],
				'size'      =>$r2['size'],
				'modul'     =>$modulArr
			);
		}

		session_start();
		$_SESSION = array(
			// collect user's informations
			'loginS'     => 1,
			'id_loginS'  => $r1['id_login'],
			'namaS'      => $r1['nama'],
			'usernameS'  => $r1['username'],
			'levelS'     => $r1['level'],
			// collect moduls
			'grupmodulS' => $grupmodulArr
		);
		// print_r($_SESSION);exit();
		$out=1;
	}else{
		$out = 0;
	}
	echo $out;
?>
