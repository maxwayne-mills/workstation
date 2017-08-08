<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => '/home/oss/repositories/workstation/becomeonewiththecode/grav-admin/user/plugins/email/email.yaml',
    'modified' => 1500466702,
    'data' => [
        'enabled' => true,
        'from' => NULL,
        'from_name' => NULL,
        'to' => NULL,
        'to_name' => NULL,
        'mailer' => [
            'engine' => 'mail',
            'smtp' => [
                'server' => 'localhost',
                'port' => 25,
                'encryption' => 'none',
                'user' => '',
                'password' => ''
            ],
            'sendmail' => [
                'bin' => '/usr/sbin/sendmail'
            ]
        ],
        'content_type' => 'text/html',
        'debug' => false
    ]
];
