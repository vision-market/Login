<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}

.ico {
	color: #ee6a7b;
}

th {
	width: 159px;
	padding: 20px 0 0 20px;
	font-weight: 700;
	font-size: 14px;
	color: #333;
	line-height: 20px;
	vertical-align: top;
	text-align: left;
}

td {
	border-top: 0;
	font-size: 14px;
	vertical-align: top;
	text-align: left;
	padding: 10px 0;
}
</style>
<title>Vision Market</title>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-6">
				<form id="form" name="frmMember" method="post" action="/shop/member/indb.php" onsubmit="return chkForm2(this)" novalidate="">
					<input type="hidden" name="mode" value="joinMember">
					<input type="hidden" name="check_mobile" value="">
					<input type="hidden" name="auth_finish_code" value="">
					<input type="hidden" name="rncheck" value="">
					<input type="hidden" name="dupeinfo" value="">
					<input type="hidden" name="pakey" value="">
					<input type="hidden" name="foreigner" value="">
					<input type="hidden" name="passwordSkin" value="Y">
					<input type="hidden" name="private2" value="">
					<input type="hidden" name="private3" value="">
					<input type="hidden" name="return_url" value="">
					<p class="page_sub">
						<span class="ico">*</span>�ʼ��Է»���
					</p>
					
					<hr>
					
					<table class="tbl_comm">
						<tbody>
							<tr class="fst">
								<th>���̵�<span class="ico">*</span>�ʼ��׸�</th>
								<td><input class="form-control w-75" type="text" name="m_id" value="" maxlength="16" required="" fld_esssential="" option="regId" label="���̵�" placeholder="6�� �̻��� ���� Ȥ�� ������ ���ڸ� ����"> <input type="hidden" name="chk_id" required="" fld_esssential="" label="���̵��ߺ�üũ" value="">
								<a class="btn btn-outline-primary w-20" href="javascript:chkId()">�ߺ�Ȯ��</a>
									<p class="txt_guide square">
										<span class="txt txt_case1">6�� �̻��� ���� Ȥ�� ������ ���ڸ� ����</span>
										<span class="txt txt_case2">���̵� �ߺ�Ȯ��</span>
									</p></td>
							</tr>
							<tr>
								<th>��й�ȣ<span class="ico">*</span>�ʼ��׸�</th>
								<td><input class="form-control w-75" type="password" name="password" required="" fld_esssential="" option="regPass" label="��й�ȣ" maxlength="16" class="reg_pw" placeholder="��й�ȣ�� �Է����ּ���">
									<p class="txt_guide square">
										<span class="txt txt_case1">10�� �̻� �Է�</span> <span class="txt txt_case2">����/����/Ư������(���� ����)�� ����ϸ�, 2�� �̻� ����</span> <span class="txt txt_case3">������ ���� 3�� �̻� ���� ��� �Ұ�</span>
									</p></td>
							</tr>
							<tr class="member_pwd">
								<th>��й�ȣ Ȯ��<span class="ico">*</span>�ʼ��׸�</th>
								<td><input class="form-control w-75" type="password" name="password2" required="" fld_esssential="" option="regPass" label="��й�ȣ" maxlength="16" class="confirm_pw" placeholder="��й�ȣ�� �ѹ� �� �Է����ּ���">
									<p class="txt_guide square">
										<span class="txt txt_case1">������ ��й�ȣ�� �Է����ּ���.</span>
									</p></td>
							</tr>
							<tr>
								<th>�̸�<span class="ico">*</span>�ʼ��׸�</th>
								<td><input class="form-control w-75" type="text" name="name" value="" required="" fld_esssential="" label="�̸�" placeholder="�̸��� �Է����ּ���"></td>
							</tr>
							<tr>
								<th>�̸���<span class="ico">*</span>�ʼ��׸�</th>
								<td><input class="form-control w-75" type="text" name="email" value="" data-email="" size="30" required="" fld_esssential="" option="regEmail" label="�̸���" placeholder="��: marketkurly@kurly.com"> <input type="hidden" name="chk_email" required="" fld_esssential="" label="�̸����ߺ�üũ"> <a href="javascript:void(0)" onclick="chkEmail()" class="btn default">�ߺ�Ȯ��</a></td>
							</tr>
							<tr class="field_phone">
								<th>�޴���<span class="ico">*</span>�ʼ��׸�</th>
								<td>
									<div class="phone_num">
										<input class="form-control w-75" type="text" value="" pattern="[0-9]*" name="mobileInp" placeholder="���ڸ� �Է����ּ���" class="inp"> <input type="hidden" name="mobile[]" id="mobile0" value="" required="" fld_esssential="" option="regNum" label="�޴���"> <input type="hidden" name="mobile[]" id="mobile1" value="" required="" fld_esssential="" option="regNum" label="�޴���"> <input type="hidden" name="mobile[]" id="mobile2" value="" required="" fld_esssential="" option="regNum" label="�޴���">
										<button id="btn_cert" class="btn default disabled" type="button">������ȣ �ޱ�</button>
									</div>
									<div id="codeNum" class="code_num">
										<input type="text" name="auth_code" id="auth_code" value="" size="6" maxlength="6" pattern="[0-9]*" label="������ȣ Ȯ��" disabled="" class="inp_confirm" oninput="if(value.length>6)value=value.slice(0,6);$(this).val($(this).val().replace(/[^0-9]/g,''));">
										<button id="btn_cert_confirm" class="btn default disabled" type="button">������ȣ Ȯ��</button>
										<p id="countdown" class="count_down"></p>
									</div>
									<p class="txt_guide">
										<span class="txt txt_case1"></span>
									</p>
								</td>
							</tr>
							<tr>
								<th>�ּ�<span class="ico">*</span>�ʼ��׸�</th>
								<td class="field_address">
								<input type="hidden" name="zonecode" id="zonecode" size="5" value="">
								<input type="hidden" name="zipcode[]" id="zipcode0" size="3" value="">
								<input type="hidden" name="zipcode[]" id="zipcode1" size="3" value="">
								<input type="hidden" name="deliPoli" id="deliPoli" size="1" value="">
								<input type="hidden" id="baseAddressType" name="base_address_type" value="">
									<div id="selectAddress">
										<input class="form-control w-75" type="text" name="addr" id="addr" value="" readonly="readonly" label="�ּ�"> <input type="hidden" name="address" id="address" value="" required="" readonly="readonly" label="�ּ�"> <input type="hidden" name="road_address" id="road_address" required="" value="" label="�ּ�">
									</div> <a href="#none" id="addressSearch" class="search" onclick="popup('../proc/popup_address.php',530,500)"> <span id="addressNo" class="address_no" data-text="��˻�">�ּ� �˻�</span>
								</a>
									<div id="selectAddressSub">
										<input type="text" name="address_sub" id="address_sub" value="" class="byteTotext" placeholder="������ �ּҸ� �Է����ּ���">
										<p id="delivery"></p>
									</div>
									<p class="txt_guide">
										<span class="txt txt_case1">������� ���� ��ǰ ������ �޶��� �� �ֽ��ϴ�.</span>
									</p></td>
							</tr>
							<tr class="select_sex">
								<th>����</th>
								<td><label class=""> <input type="radio" name="sex" value="m"> <span class="ico"></span>����
								</label> <label class=""> <input type="radio" name="sex" value="w"> <span class="ico"></span>����
								</label> <label class="checked"> <input type="radio" name="sex" value="n" checked="checked"> <span class="ico"></span>���þ���
								</label></td>
							</tr>
							<tr class="birth field_birth">
								<th>�������</th>
								<td>
									<div class="birth_day">
										<input type="text" name="birth_year" id="birth_year" pattern="[0-9]*" value="" label="�������" size="4" maxlength="4" placeholder="YYYY"> <span class="bar"></span> <input type="text" name="birth[]" id="birth_month" pattern="[0-9]*" value="" label="�������" size="2" maxlength="2" placeholder="MM"> <span class="bar"></span> <input type="text" name="birth[]" id="birth_day" pattern="[0-9]*" value="" label="�������" size="2" maxlength="2" placeholder="DD">
									</div>
									<p class="txt_guide">
										<span class="txt bad"></span>
									</p>
								</td>
							</tr>

						</tbody>
					</table>
					<div id="formSubmit" class="form_footer">
						<button type="button" class="btn active btn_join" onclick="formJoinSubmit()">�����ϱ�</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display: none;"></iframe>
	<iframe id="ifrmHpauth" name="ifrmHpauth" style="display: none;"></iframe>
	<script src="/shop/data/skin/designgj/js/pw_validate.js?ver=1.49.2"></script>
	<script src="/shop/data/skin/designgj/js/delivery_address.js?ver=1.49.2"></script>
	<script type="text/javascript">
	$(document).ready(function() {
    $('input[name=name]').on('keyup keydown blur', function(){
      preventSpecialChars($(this), 'write');
    });

    $("#formSubmit .btn_submit").click(function(){
      $("input[type='text']").each(function(){
        var input_txt = $(this).val();
        var input_trim_txt = input_txt.replace(/(^\s*)|(\s*$)/gi, "");
        $(this).val(input_trim_txt);
      })
    });

    // ���� ����Ȯ�� + ��������Ȯ��
    var checkType1 = false;// ����
    var checkType2 = false;// ����
    var checkType3 = false;// ���ڸ�
    function check_confirm(characterReg, minNum){
      if(characterReg.length < minNum){
        checkType1 = false;
      }else{
        checkType1 = true;
      }

      var checkNumber = characterReg.search(/[0-9]/g); // ����
      var checkEnglish = characterReg.search(/[a-zA-Z]/ig); // ��ҹ���
      var checkSpecial = characterReg.search(/[~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // Ư������
      var checkAscii = characterReg.search(/[^a-zA-Z0-9~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // �ƽ�Ű Ư������

      if(checkNumber >= 0 && checkEnglish >= 0 && checkAscii === -1) {
        checkType2 = true;
        checkType3 = true;
        if(checkSpecial !== -1) checkType3 = false;
      }else if(checkNumber >= 0 && checkSpecial !== -1 && checkAscii === -1){
        checkType2 = true;
        checkType3 = false;
      }else if(checkEnglish >= 0 && checkSpecial !== -1 && checkAscii === -1) {
        checkType2 = true;
        checkType3 = false;
      }else if( checkEnglish >= 0 && checkSpecial === -1 && checkAscii === -1) {
        checkType3 = true;
        if (checkNumber === -1) checkType2 = false;
      }else{
        checkType2 = false;
        checkType3 = false;
      }
    }


    // ���̵����
    var saveId;
    $('[name=m_id]').on('focus',function(){
      saveId = $(this).val();
      $(this).parent().find('.txt_guide').show();
    });
    $('[name=m_id]').on('keyup', function(){
      var $target = $(this).parent().find('.txt_guide');
      var $chkVal =  $(this).val();
      var $numMin = 6;
      if(saveId !== $chkVal) class_change($target.eq(1),'bad');// �ߺ�Ȯ���� �����ɶ�
      check_confirm($chkVal,$numMin);
      if(checkType1 === true && checkType3 === true){
        class_change($target.find('.txt_case1'), 'good');
        $(this).attr('data-validator',"true");
      }else{
        class_change($target.find('.txt_case1'),'bad');
        $(this).attr('data-validator',"false");
      }
      if($('[name=chk_id]').val() == 1){
        $('[name=chk_id]').val('');
        class_change($target.find('.txt_case2'),'bad');
      }
    });

    // ��й�ȣ����
    $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('focus',function(){
      $(this).parent().find('.txt_guide').show();
    });
    $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('blur', function () {
      if ($(this).parent().find('.txt').hasClass('bad') || $.trim($(this).val()) === "" ){
        if (!$(this).hasClass('bad')) $(this).addClass('bad');
      } else {
        if ($(this).hasClass('bad')) $(this).removeClass('bad')
      }
    });
    $('input[name=password2], [name=confirmPassword]').on('keyup', function(){
      var $target = $(this).parent().find('.txt_guide');

      if( ( $("[name=password]").val() === $('[name=password2]').val() && $.trim($("[name=password]").val()) != "") || ( $("[name=newPassword]").val() === $('[name=confirmPassword]').val() && $.trim($("[name=newPassword]").val()) != "") ) {
        class_change($target.find('.txt_case1'),'good');
      }else{
        class_change($target.find('.txt_case1'),'bad');
      }
    });

    $('input[name=password], [name=newPassword]').on('keyup', function(e){
      var $target = $(this).parent().find('.txt_guide');
      var $chkVal =  $(this).val();
      var $numMin = 10;

      check_confirm($chkVal,$numMin);

      if(checkType1 === false && checkType2 === false){
        class_change($target.find('.txt_case1'),'bad');
        class_change($target.find('.txt_case2'),'bad');
      }
      if(checkType1 === true && checkType2 === false){
        class_change($target.find('.txt_case1'),'good');
        class_change($target.find('.txt_case2'),'bad');
      }
      if(checkType1 === false && checkType2 === true){
        class_change($target.find('.txt_case1'),'bad');
        class_change($target.find('.txt_case2'),'good');
      }
      if(checkType1 === true && checkType2 === true){
        class_change($target.find('.txt_case1'),'good');
        class_change($target.find('.txt_case2'),'good');
      }

      var hasThreeOrMoreConsecutiveNumbers = pwValidate.hasThreeOrMoreConsecutiveNumbers($chkVal)
      if (hasThreeOrMoreConsecutiveNumbers) {
        class_change($target.find('.txt_case3'),'bad');
      } else {
        class_change($target.find('.txt_case3'),'good');
      }

      if($(this).attr('id') == 'newPassword'){
        if($('[name=originalPassword]').val() == $('[name=newPassword]').val() ){
          class_change($target.find('.txt_case4'),'bad');
        }else{
          class_change($target.find('.txt_case4'),'good');
        }
        $('[name=confirmPassword]').trigger('keyup');
        var newPasswordCheckNum = 0;
        $target.find('.txt').each(function(){
          if($(this).hasClass('good')) newPasswordCheckNum++;
          $('[name=newPasswordCheck]').val(newPasswordCheckNum);
        });
      }else{
        $('[name=password2]').trigger('keyup');
      }
    });

    $("#selectRecommend label").on('click', function (e) {
      var target = $(e.target)
      var wrapper = target.closest('.group_radio')

      var inputOptions = wrapper.find('label')
      var targetInput = target.closest('.radio_wrapper').find('label')

      var selectOptionId = targetInput.find('input').attr('id')
      var inputWrapper = wrapper.siblings('.input_wrapper')
      var textBox = inputWrapper.find('input')
      var defaultMessage = {
        'recommendId': '��õ�� ���̵� �Է����ּ���.',
        'eventName': '���� �̺�Ʈ���� �Է����ּ���.'
      }
      var placeholderMessage = defaultMessage[selectOptionId]

      // ������ư ���
      inputOptions.not(targetInput).removeClass('checked')
      targetInput.addClass('checked')

      // ���� �ؽ�Ʈ ����
      textBox.val("")

      // placeholder �ؽ�Ʈ ����
      textBox.attr('placeholder', placeholderMessage)

      // input name, value�� ����
      var nameOptions = {
        'recommendId': 'recommid',
        'eventName': 'ex2'
      }
      textBox.attr('id', nameOptions[selectOptionId])
      inputWrapper.addClass('selected')
    })
  });

  // Ŭ��������
  function class_change(obj,state){
    if(state === 'good') {
      if (obj.hasClass('bad')) obj.removeClass('bad');
      obj.addClass('good');
    }else{
      if(obj.hasClass('good')) obj.removeClass('good');
      obj.addClass('bad');
    }
  }

  // �ߺ�Ȯ��
  function chkId()
  {
    var alertMsg = "���̵�� 6�� �̻��� ���� Ȥ�� ������ ���� ���ո� �����մϴ�";
    var $target = $("[name='m_id']").parent().find('.txt_case2');
    var id_txt = $("[name='m_id']").val();
    var id_trim_txt = id_txt.replace(/(^\s*)|(\s*$)/gi, "");
    $("input[name='m_id']").val(id_trim_txt);
    var form = document.frmMember;
    if ($("input[name='m_id']").val() === "") {
      alert("���̵� �Է��� �ּ���.");
      return;
    }
    if($("input[name='m_id']").val().length < 6){alert("���̵�� 6�� �̻��� ���� Ȥ�� ������ ���� ���ո� �����մϴ�");return;}
    if (!chkText(form.m_id,form.m_id.value,"���̵� �Է����ּ���")) return;
    var idPattern = /^[a-zA-Z0-9]{1}[^"']{3,15}$/; // chkPatten �޼ҵ忡�� ������
    var isValidId = eval(idPattern);
    if (!isValidId.test(form.m_id.value)) {
      alert(alertMsg);
      return;
    }
    var $idValidator = $("[name='m_id']").attr('data-validator');
    if($idValidator === "false"){
      $("[name=chk_id]").val('');
      alert(alertMsg);
      if($target.hasClass('good')) $target.removeClass('good');
      $target.addClass('bad');
    }else{
      ifrmHidden.location.href = "indb.php?mode=chkId&m_id=" + form.m_id.value;
    }
  }
  function chkId2(num){
    var $target = $("[name='m_id']").parent().find('.txt_case2');
    var id_txt = $("[name='m_id']").val();
    if(num == 1){
      if($target.hasClass('bad')) $target.removeClass('bad');
      $target.addClass('good');
      $("[name='m_id']").attr('data-id',id_txt);
    }else{
      if($target.hasClass('good')) $target.removeClass('good');
      $target.addClass('bad');
    }
  }

  function chkEmailChange($target){
    if($target.val() === $target.data('email') && $target.val().trim() !== ''){
      $('[name=chk_email]').val('1');
    }else{
      $('[name=chk_email]').val('0');
    }
  }
  
  // �̸��� �ߺ�Ȯ��
  function chkEmail()
  {
    var email_txt = $("input[name='email']").val();
    var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
    var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
    $("input[name='email']").val(trim_txt)
    if ($("input[name='email']").val() === "") {
      alert("�̸��� �ּҸ� �Է��� �ּ���.");
      $('[name=chk_email]').val('0');
      return false;
    }
    if(email_regex.test(trim_txt) === false) {
      alert("�߸��� �̸��� �����Դϴ�.");
      $('[name=chk_email]').val('0');
      return false;
    }

    var form = document.frmMember;
    if (!chkText(form.email,form.email.value,"�̸����� �Է����ּ���")){
      $('[name=chk_email]').val('0');
      return;
    }
    if (!chkPatten(form.email,form.email.getAttribute('option'),"�������� �̸��� �ּҸ� �Է����ּ���.")){
      $('[name=chk_email]').val('0');
      return;
    }

    $('[name=chk_email]').val('1');

    var chkUrl = "indb.php?mode=chkEmail&email=" + form.email.value + "&m_id=";
    ifrmHidden.location.href = chkUrl;
  }

  $("input[name='mobileInp']").change(function() {
    $("input[name='check_mobile']").val("0");
  });

  // ������� �Է½� �� ��Ŀ�� �̺�Ʈ
  $('.birth_day input').focus(function(){
    $(this).parent().addClass('on');
  }).keyup(function(){
    var inputText = $(this).val();
    var number = $(this).val().replace(/[^0-9]/g,'');
    $(this).val(number);
  }).blur(function(){
    $(this).parent().removeClass('on');
    // KM-1261 ȸ������ 14�� ����
    birthCheckAction.validatorText();
  });


  // ���� ��й�ȣ Ȯ��
  function checkCurrentPassword(el) {
    var currentPassword = $(el).val();
    var errorMessage = $(el).parent().find(".txt_guide");
    if (currentPassword.trim() === "") {
      errorMessage.hide();
      $('[name=originalPasswordCheck]').val('1');
      return false;
    }
    var req = {password:currentPassword};
    kurlyApi({
      method:'post',
      // url:'/v1/users/check/password',
      url:'/v3/auth/check-password',
      data:req
    }).then(function (response) {
      if(response.status === 204){
        errorMessage.hide();
        $('[name=originalPasswordCheck]').val('1');
        return true;
      }else{
        errorMessage.show();
        $('[name=originalPasswordCheck]').val('0');
        return false;
      }
    }.bind(this)).catch(function(err){
      errorMessage.show();
      $('[name=originalPasswordCheck]').val('0');
      return false;
    });
  }

  function chkForm2(f) {
    if($('[name=originalPasswordCheck]').val() === '0'){
      alert('���� ��й�ȣ�� Ȯ�����ּ���', function(){
        $('[name=originalPassword]').focus();
      });
      return false;
    }

    if($('#originalPassword').val() != "" || $('#newPassword').val() != "" || $('#confirmPassword').val() != ""){
      if($('[name=newPasswordCheck]').val() < 4){
        alert('�� ��й�ȣ�� Ȯ�����ּ���', function(){
          $("[name=newPassword]").focus();
        });
        return false;
      }
      if($('#confirmPassword').val() != $('#newPassword').val()){
        alert('�� ��й�ȣ Ȯ���� Ȯ�����ּ���', function(){
          $('#confirmPassword').focus();
        });
        return false;
      }
    }

    if($('[name=chk_email]').val() !== '1'){
      alert('�̸��� �ߺ�Ȯ���� Ȯ�����ּ���', function(){
        $('[name=email]').focus();
      });
      return false;
    }

    if(! preventSpecialChars($('input[name=name]'), 'result')){
      return false;
    }

    if ($("input[name='check_mobile']").val() !== "1")
    {
      alert("�޴��� ������ �Ϸ��� �ּ���.", function () {
        $('#btn_cert').focus();
      });
      return false;
    }


    var email_txt = $("input[name='email']").val();
    var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
    var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
    $("input[name='email']").val(trim_txt)
    if(email_regex.test(trim_txt) === false) {
      alert('�߸��� �̸��� �����Դϴ�.', function () {
        $('input[name=email]').focus();
      });
      return false;
    }

    // KM-1261 ȸ������ 14�� ����
    if(! birthCheckAction.validatorForm()){
      return false;
    }

    if (chkForm(f) === false) {
      return false;
    }
    return true;
  }

  // KM-1483 Amplitude
  KurlyTracker
    .setScreenName('sign_up')
    .setAction('view_sign_up', { join_path: 'kurly' })
    .sendData();
</script>

	<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</body>
</html>