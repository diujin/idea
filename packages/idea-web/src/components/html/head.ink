<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>{title}</title>
  <meta name="description" content={description} />
  <meta property="og:title" content={title} />
  <meta property="og:description" content={description} />
  <meta property="og:image" content="https://stackpress.github.io/ink/ink-logo.png" />
  <meta property="og:url" content={`https://stackpress.github.io/ink${url}`} />
  <meta property="og:type" content="website" />
  <meta name="twitter:card" content="summary" />
  <meta name="twitter:site" content="@stackpress" />
  <meta name="twitter:title" content={title} />
  <meta name="twitter:description" content={description} />
  <meta name="twitter:image" content="https://stackpress.github.io/ink/ink-logo.png" />
  <link rel="favicon" href="/idea/favicon.ico" />
  <link rel="shortcut icon" type="image/png" href="/idea/favicon.png" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
  <link rel="stylesheet" type="text/css" href="/idea/styles/global.css" />
  <link rel="stylesheet" type="text/css" href={`/idea/client/${env('BUILD_ID')}.css`} />
  
  <script data-template type="text/json">__TEMPLATE_DATA__</script>
  <script src={`/idea/client/${env('BUILD_ID')}.js`}></script>
  <if true={env('PUBLIC_ENV') === 'development'}>
    <script src="/dev.js"></script>
  </if>
</head>