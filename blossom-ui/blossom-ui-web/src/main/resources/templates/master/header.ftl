<#macro default>
  <meta charset="utf-8">
  <title>Blossom | Back-Office</title>
  <meta name="description" content="Blossom Back-Office">
  <meta name="keywords" content="Blossom Back-Office">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</#macro>


<#macro styles>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="/css/animate.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<link href="/css/plugins/jqcloud/jqcloud.min.css" rel="stylesheet">
<link href="/css/plugins/jsTree/style.min.css" rel="stylesheet">
<link href="/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
</#macro>

<#macro scripts>
<script src="/js/jquery-3.1.1.min.js"></script>
<script>
    $.extend({
        getQueryParameters : function(str) {
            return (str || document.location.search).replace(/(^\?)/, '')
                    .split("&").map(function(n) {
                        return n = n.split("="), this[n[0]] = n[1], this
                    }.bind({}))[0];
        },
        updateQueryStringParameter : function(uri, key, value) {
            var i = uri.indexOf('#');
            var hash = i === -1 ? '' : uri.substr(i);
            uri = i === -1 ? uri : uri.substr(0, i);
            var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
            var separator = uri.indexOf('?') !== -1 ? "&" : "?";
            if (uri.match(re)) {
                uri = uri.replace(re, '$1' + key + "=" + value + '$2');
            } else {
                uri = uri + separator + key + "=" + value;
            }
            return uri + hash;
        }
    });
</script>
</#macro>
