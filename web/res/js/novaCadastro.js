function alterarfs(){
     $(document).ready(function(){
		$('.proximo').click(function(){
			fs_atual = $('#infobasica');
			next_fs = $('#infoendereco');
			next_fs.show(); 
			fs_atual.hide();
		});
 
	 	$('.voltar').click(function(){
			fs_atual = $('#infoendereco');
			next_fs = $('#infobasica');
			next_fs.show(); 
			fs_atual.hide();
		});
	});
}

