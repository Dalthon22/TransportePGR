$(function () {
    $('.ui.sidebar')
        .sidebar({
            context: $('.attached.segment')
        })
        .sidebar('attach events', '#menu');

    $('#user_menu #user')
        .popup({
            inline: true,
            hoverable: true,
            position: 'bottom center',
            delay: {
                show: 300,
                hide: 800
            }
        });

});