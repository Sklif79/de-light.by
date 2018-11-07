<?php
$success_msg = "";
$error_msg = "";// в этой переменной будем хранить сообщения формы
$errors = array(); // контейнер для ошибок
// проверяем корректность полей
if($_POST['user_name'] == "")    $errors[] = "Введите имя!";
if($_POST['user_phone'] == "")   $errors[] = "Введите номер телефона!";

// если форма без ошибок
if(empty($errors)){
    // собираем данные из формы
    $message  = "Имя: " . $_POST['user_name'] . "<br/>";
    $message .= "Номер телефона: " . $_POST['user_phone'];
    send_mail($message); // отправим письмо
    // выведем сообщение об успехе
    $success_msg = "<div class='popup__messages-success'>Сообщение успешно отправлено!</div>";

    // делаем ответ на клиентскую часть в формате JSON
    echo json_encode(array(
        'success' => $success_msg
    ));
}else{
    $error_msg = "";

    // если были ошибки, то выводим их
    foreach($errors as $one_error){
        $error_msg .= "$one_error <br />";
    }

    $error_msg = "<div class='popup__messages-error'>" .$error_msg . "</div>";

    // делаем ответ на клиентскую часть в формате JSON
    echo json_encode(array(
        'error' => $error_msg
    ));
}



// функция отправки письма
function send_mail($message){
    // почта, на которую придет письмо
    $mail_to = "sklif_@mail.ru";
    // тема письма
    $subject = "Обратный звонок для сайта de-light.by";

    // заголовок письма
    $headers= "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html; charset=utf-8\r\n"; // кодировка письма
    $headers .= "From: Тестовое письмо <no-reply@test.com>\r\n"; // от кого письмо

    // отправляем письмо
    mail($mail_to, $subject, $message, $headers);
}
?>
