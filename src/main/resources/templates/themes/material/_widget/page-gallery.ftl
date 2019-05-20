<link rel="stylesheet" href="/material/source/css/gallery.min.css">
<body>
<!-- Wrapper -->
<div id="wrapper">

    <!-- Header -->
    <header id="header">
        <h1>
            <a href="${options.blog_url!}/"><strong>${options.blog_title!}</strong></a> - 图库
        </h1>
        <nav>
            <ul>
                <li>
                    <a href="#footer" class="icon fa-info-circle">
                        ©&nbsp;${user.userDisplayName!'Halo'}
                    </a>
                </li>
            </ul>
        </nav>
    </header>

    <!-- Main -->
    <div id="main">
        <#list galleries as gallery>
            <article class="thumb">
                <a href="${gallery.galleryThumbnailUrl}" class="image lazy" data-original="${gallery.galleryThumbnailUrl}">
                    <img class="lazy" data-original="${gallery.galleryUrl}" alt="${gallery.galleryDesc}" />
                </a>
                <p>${gallery.galleryDesc}</p>
                <h2>${gallery.galleryName}</h2>
                <p>${gallery.galleryDate!}</p>
            </article>
        </#list>
    </div>
</div>

<!-- Scripts -->
<script src="/material/source/js/gallery/gallery.js"></script>
<script>lsloader.load("lazyload_js","/material/source/js/lazyload.min.js?1BcfzuNXqV+ntF6gq+5X3Q==", true)</script>
<script>
    queue.offer(function(){
        $('.lazy').lazyload({
            effect: 'fadeIn',
            event: 'scrollstop'
        });
    })
    <!-- Start Queue -->
    $(document).ready(function(){
        setInterval(function(){
            queue.execNext();
        },200);
    });
</script>
</body>
