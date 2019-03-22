<div id="js-product-list">

    <input id="product_tab3" type="radio" name="product_tabs" checked/>
    <label for="product_tab3">
        +
    </label>
    <input id="product_tab2" type="radio" name="product_tabs" checked/>
    <label for="product_tab2">
        -
    </label>

    <section id="product-content-tab3">
        {extends file='catalog/listing/product-list.tpl'}
        {block name='product_list_header'}

            subcategories+</br></br>
            {var_dump($subcategories)}

        {/block}
        {foreach from=$subcategories item=subcategory}
            {if count($subcategory.prods)>0}
                <script type="text/javascript">
                    //pagin-plitation

                    var subCatId = {$subcategory.id_category};
                    pageSize = 6;


                    $(function pageB{$subcategory.id_category}() {
                        var pageCount{$subcategory.id_category} = Math.ceil($(".line-content-{$subcategory.id_category}").size() / pageSize);

                        for (var i = 0; i < pageCount{$subcategory.id_category}; i++)
                                {literal}
                        {
                            {/literal}
                            if (i == 0)
                                $("#pagin-plit-{$subcategory.id_category}").append('<li><a class="current" >' + (i + 1) + '</a></li>');
                            else
                                $("#pagin-plit-{$subcategory.id_category}").append('<li><a >' + (i + 1) + '</a></li>');
                            {literal}
                        }
                        {/literal}

                        showPage{$subcategory.id_category}(1);


                        $("#pagin-plit-{$subcategory.id_category} li a").click(function () {
                            $("#pagin-plit-{$subcategory.id_category} li a").removeClass("current");
                            $(this).addClass("current");
                            showPage{$subcategory.id_category}(parseInt($(this).text()))
                            {literal}
                        });

                    })
                    {/literal}

                    showPage{$subcategory.id_category} = function showHidePages{$subcategory.id_category}(page)

                    {literal}
                    {
                        {/literal}
                        $(".line-content-{$subcategory.id_category}").hide();

                        $(".line-content-{$subcategory.id_category}").each(function (n)
                        {literal}
                        {
                            {/literal}

                            if (n >= pageSize * (page - 1) && n < pageSize * page)
                                $(this).show();

                            {literal}
                        });
                    }
                    {/literal}
                </script>
                <script type="text/javascript">
                    //pagin-plitation

                    var subCatIdT = {$subcategory.id_category};
                    pageSize = 6;
                    $(function pageT{$subcategory.id_category}() {
                        var pageCountT{$subcategory.id_category} = Math.ceil($(".line-content-two-{$subcategory.id_category}").size() / pageSize);

                        for (var i = 0; i < pageCountT{$subcategory.id_category}; i++)
                                {literal}
                        {
                            {/literal}
                            if (i == 0)
                                $("#pagin-plit-two-{$subcategory.id_category}").append('<li><a class="current" >' + (i + 1) + '</a></li>');
                            else
                                $("#pagin-plit-two-{$subcategory.id_category}").append('<li><a >' + (i + 1) + '</a></li>');
                            {literal}
                        }
                        {/literal}

                        showPageT{$subcategory.id_category}(1);


                        $("#pagin-plit-two-{$subcategory.id_category} li a").click(function () {
                            $("#pagin-plit-two-{$subcategory.id_category} li a").removeClass("current");
                            $(this).addClass("current");
                            showPageT{$subcategory.id_category}(parseInt($(this).text()))
                            {literal}
                        });

                    })
                    {/literal}

                    showPageT{$subcategory.id_category} = function showHidePages{$subcategory.id_category}(page)

                    {literal}
                    {
                        {/literal}
                        $(".line-content-two-{$subcategory.id_category}").hide();

                        $(".line-content-two-{$subcategory.id_category}").each(function (n)
                        {literal}
                        {
                            {/literal}

                            if (n >= pageSize * (page - 1) && n < pageSize * page)
                                $(this).show();

                            {literal}
                        });
                    }
                    {/literal}
                </script>
                <div class="related products">
                    <div class="slider-top">
                        <div class="container ">
                            <div class="slider-controls">
                                <!-- -->
                                <img id="hamb-button-{$subcategory.id_category}" onclick="
                                        document.getElementById('pagin-plit-{$subcategory.id_category}').style.display='block';
                                        document.getElementById('pagin-plit-two-{$subcategory.id_category}').style.display='none';
                                        document.getElementById('product-plit2-{$subcategory.id_category}').style.display='none';
                                        document.getElementById('product-plit-{$subcategory.id_category}').style.display='block';

                                        document.getElementById('hamb-button-{$subcategory.id_category}').src='{$urls.theme_assets}css/img/plit_act.png';
                                        document.getElementById('list-button2-{$subcategory.id_category}').src='{$urls.theme_assets}css/img/plit2.png';"

                                     src="{$urls.theme_assets}/css/img/plit_act.png"
                                     style="cursor: pointer; width: 30px; height: 30px; margin-bottom: 20px; margin-right: 20px;">
                                <!-- -->
                                <img id="list-button2-{$subcategory.id_category}" onclick="
                                        document.getElementById('pagin-plit-two-{$subcategory.id_category}').style.display='block';
                                        document.getElementById('pagin-plit-{$subcategory.id_category}').style.display='none';
                                        document.getElementById('product-plit2-{$subcategory.id_category}').style.display='block';
                                        document.getElementById('product-plit-{$subcategory.id_category}').style.display='none';

                                        document.getElementById('hamb-button-{$subcategory.id_category}').src='{$urls.theme_assets}css/img/plit.png';
                                        document.getElementById('list-button2-{$subcategory.id_category}').src='{$urls.theme_assets}css/img/plit2_act.png';"

                                     src="{$urls.theme_assets}/css/img/plit2.png"
                                     style="cursor: pointer; width: 30px; height: 30px; margin-bottom: 20px; margin-right: 20px;">
                            </div>
                        </div>
                    </div>

                    <div class="container prod-slider prod-list" id="prod-container-{$subcategory.id_category}">


                        <ul id="product-plit-{$subcategory.id_category}"
                            class="product-plit products product-list-grid desktop-columns-3 tablet-columns-3 mobile-columns-1"
                            style="">
                            {foreach from=$subcategory.prods item=product }{include file='catalog/_partials/miniatures/product-plit.tpl' product=$product}{/foreach}

                        </ul>

                        <ul id="product-plit2-{$subcategory.id_category}"
                            class="product-plit2 products product-list-grid desktop-columns-2 tablet-columns-3 mobile-columns-1"
                            style="">
                            {foreach from=$subcategory.prods item=product }{include file='catalog/_partials/miniatures/product-plit-two.tpl' product=$product}{/foreach}
                        </ul>

                        <ul id="product-carousel-{$subcategory.id_category}"
                            class="product-carousel nav-center nav-style-1">
                        </ul>


                    </div>
                    <nav class="woocommerce-pagination navigation" style="padding:0; margin:0;">
                        <ul id="pagin-plit-{$subcategory.id_category}" class="page-numbers"
                            style="background: #f9f9f9; display:block;  width: 100%;  text-align: center;  padding: 5px;">

                        </ul>
                        <ul id="pagin-plit-two-{$subcategory.id_category}" class="page-numbers"
                            style="background: #f9f9f9; display:none;  width: 100%;  text-align: center;  padding: 5px;">

                        </ul>

                    </nav>

                </div>
                {include file='catalog/_partials/product-modals.tpl'}
                <div id="js-product-list-header" class="container">

                    <div class="block-category">

                        {if $subcategory.description}
                            <div id="category-description-cut-{$subcategory.id_category}"
                                 class="text-muted category-description"
                                 style="display:block;">{$subcategory.description|truncate:400 nofilter}</div>
                            <div id="category-description-full-{$subcategory.id_category}"
                                 class="text-muted category-description"
                                 style="display:none;">{$subcategory.description nofilter}</div>
                            <a id="read-more-cat-{$subcategory.id_category}" style="display:block;"
                               class="btn btn-primary read-more-cat"
                               onclick="document.getElementById('read-more-cat-hide-{$subcategory.id_category}').style.display='block'; document.getElementById('category-description-full-{$subcategory.id_category}').style.display='block'; document.getElementById('category-description-cut-{$subcategory.id_category}').style.display='none'; document.getElementById('read-more-cat-{$subcategory.id_category}').style.display='none';">Mehr
                                anzeigen</a>
                            <a id="read-more-cat-hide-{$subcategory.id_category}" style="display:none;"
                               class="btn btn-primary read-more-cat"
                               onclick="document.getElementById('read-more-cat-{$subcategory.id_category}').style.display='block';document.getElementById('category-description-full-{$subcategory.id_category}').style.display='none'; document.getElementById('category-description-cut-{$subcategory.id_category}').style.display='block'; document.getElementById('read-more-cat-hide-{$subcategory.id_category}').style.display='none';">Weniger
                                anzeigen</a>
                        {/if}

                    </div>

                </div>
            {/if}
        {/foreach}


    </section>


</div>
{foreach from=$listing.products item="product"}
    {include file='catalog/_partials/products-modals.tpl'}

{/foreach}