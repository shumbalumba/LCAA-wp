<!DOCTYPE html>
<html <?php language_attributes() ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale= 1.0">
    <?php wp_head(); ?>
    <title><?php wp_title('|', true, 'right' ); ?></title>
</head>

<body style='background-image: url(<?php the_field('website_background', 10) ?>); background-repeat: no-repeat; background-attachment: fixed;'>
