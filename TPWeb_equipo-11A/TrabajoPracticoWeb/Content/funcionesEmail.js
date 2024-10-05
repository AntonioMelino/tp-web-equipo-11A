

emailjs.init({
    publicKey: "wzMtTjt9hWI9Dr9lB",
});


function sendEmail(to_name, from_email, voucher_code) {
    var contactParams = {
        to_name: to_name,
        from_name: 'Equipo 11',
        from_email: from_email,
        voucher_code: voucher_code,
        message: "Tu código de promoción '" + voucher_code + "' ha sido canjeado exitosamente. ¡Disfruta de las recompensas!",
    };

    emailjs.send('service_t6eknb4', 'template_dgn2azp', contactParams)
        .then(function (response) {
            console.log('ENVIADO', response.status, response.text);
        }, function (error) {
            console.log('ERROR', error);
        });
}