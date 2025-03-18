<link rel="import" type="template" href="@/components/html/head.ink" name="html-head" />
<link rel="import" type="template" href="@/components/html/header.ink" name="html-header" />
<link rel="import" type="component" href="@stackpress/ink-ui/layout/panel.ink" name="panel-layout" />
<link rel="import" type="component" href="@stackpress/ink-ui/form/button.ink" name="element-button" />
<link rel="import" type="component" href="@/components/ide/app.ink" name="ide-app" />
<link rel="import" type="component" href="@/components/ide/code.ink" name="ide-code" />
<link rel="import" type="component" href="@/components/ide/preview.ink" name="ide-preview" />
<link rel="import" type="component" href="@/components/i18n/translate.ink" name="i18n-translate" />
<link rel="import" type="component" href="@/components/tweet-box.ink" />
<style>
  @ink theme;
  @ink reset;
  @ink fouc-opacity;
  @ink utilities;
</style>
<script>
  import { env } from '@stackpress/ink';
  import { _ } from '@/components/i18n';

  const url = '/idea/index.html';
  const title = _('Idea - A meta language to express and transform your ideas to reality.');
  const description = _('Idea is a meta language that aims to streamline and automate parts of software development that follow a common pattern and therefore can be rendered.');
</script>
<html>
  <html-head />
  <body class="dark bg-t-0 tx-t-1">
    <panel-layout>
      <header><html-header /></header>
      <main class="scroll-auto">
        <section class="bg-gradient border-primary py-80 tx-center w-full">
          <div class="pb-40">
            <img class="h-100" src="/idea/idea-logo.png" alt="Idea Logo" />
              <h1 class="tx-50 mt-40 ">
                {_('Idea')}
              </h1>
              <i18n-translate p trim class="tx-30 pb-30 pt-20 tx-lh-36">
                A meta language to express and transform your ideas to reality.
              </i18n-translate>
              <element-button 
                xl rounded 
                class="mr-10 bg-t-3" 
                href="/idea/docs/getting-started.html"
                style="font-size: 17px;"
                >
                {_('Get Started')}
              </element-button>
              <element-button 
                primary xl rounded 
                class="inline-block"
                href="/ink/docs/index.html"
                style="font-size: 17px;"
                >
                {_('Read the Docs')}
              </element-button>
          </div>
        </section>
        <div class="bg-0 w-full border-primary">
          <section class="py-80 px-40 flex flex-col items-center gap-20">
            <div class>
              <h1 class="tx-40 tx-center tx-justify fw-bold">
                {_('Automate code generation with Idea')}
              </h1>
              <p trim class="p-20 tx-center tx-justify tx-lh-36 tx-18 mx-auto mw-960" >
                The purpose of this language is to streamline and automate parts of 
                software development that follow a common pattern and therefore can be rendered. 
                Some example code that can be generated using <span class="code">.idea</span> files including the following.
              </p>
            </div>
            <div class="flex flex-wrap justify-center gap-20">
              <div class="card bg-t-2 p-20 rounded w-500 max-w-full">
                <h3 class="tx-24 fw-bold">📦 Database Calls with Any ORM</h3>
                <p class="tx-18 mt-10">Supports Prisma, TypeORM, Sequelize, and more.</p>
              </div>

              <div class="card bg-t-2 p-20 rounded w-500 max-w-full">
                <h3 class="tx-24 fw-bold">🌍 API, REST, or GraphQL Endpoints</h3>
                <p class="tx-18 mt-10">Easily define and expose APIs using multiple protocols.</p>
              </div>

              <div class="card bg-t-2 p-20 rounded w-500 max-w-full">
                <h3 class="tx-24 fw-bold">⚛️ React Components</h3>
                <p class="tx-18 mt-10">Write reusable React components with full compatibility.</p>
              </div>

              <div class="card bg-t-2 p-20 rounded w-500 max-w-full">
                <h3 class="tx-24 fw-bold">🔐 TypeScript Type Safety</h3>
                <p class="tx-18 mt-10">Enforce type safety across your application.</p>
              </div>

              <div class="card bg-t-2 p-20 rounded w-500 max-w-full">
                <h3 class="tx-24 fw-bold">🛠️ Admin Pages</h3>
                <p class="tx-18 mt-10">Built-in admin panel templates and customization.</p>
              </div>

              <div class="card bg-t-2 p-20 rounded w-500 max-w-full">
                <h3 class="tx-24 fw-bold">📝 70% Code Generation</h3>
                <p class="tx-18 mt-10">Automates repetitive tasks to speed up development.</p>
              </div>
            </div>
          </section>
        </div>
        <div class="bg-gradient w-full border-primary">
          <section class="m-auto mw-960 px-20 py-20 pb-60">
            <h1 class="mt-40 mb-10 tx-center">
              {_('Usage')}
            </h1>
            <i18n-translate p trim class="tx-center mb-20">
              This is an example idea schema.
            </i18n-translate>
            <ide-app title="my.idea">
              <ide-code lang="js" numbers trim detab={14}>{`
                //my.idea
                  model Product @label("Product" "Products") @suggested("[name]") @icon("gift") {
                    name        String   @label("Name") 
                                        @field.text
                                        @is.required("Name is required")
                                        @list.detail @view.text

                    image       String   @label("Image") 
                                        @field.image
                                        @list.image({ width 20 height 20 }) 
                                        @view.image({ width 100 height 100 })

                    description String   @label("Description") 
                                        @field.textarea
                                        @list.none @view.text
                    
                    currency    String   @label("Currency")
                                        @filterable @default("USD")
                                        @field.currency
                                        @is.ceq(3 "Should be valid currency prefix")
                                        @list.text @view.text
                    
                    srp         Float?   @label("SRP")
                                        @min(0.00) @step(0.01)
                                        @field.number({ min 0.00 step 0.01 })
                                        @list.price @view.price
                    
                    price       Float?   @label("Offer Price")
                                        @min(0.00) @step(0.01)
                                        @field.number({ min 0.00 step 0.01 })
                                        @list.price @view.price
                  }
              `}</ide-code>
            </ide-app>
          </section>
        </div>
        <div class="w-full border-primary">
          <section class="border-primary m-auto mw-960 px-20 py-20 pb-60">
            <h1 class="mt-40 mb-20 tx-center">
              {_('Transform')}
            </h1>
            <i18n-translate p trim class="tx-center tx-lh-24 mb-20">
              To transform an idea, you need to plugin a transformer like the following example.
            </i18n-translate>
              <ide-app title="my.idea">
                <ide-code lang="js" numbers trim detab={14}>{`
                  //my.idea
                  plugin "idea-ts" {
                    ts true
                    output "./modules/[name]/types"
                  }
                  // ... your idea ...
                  // model Product ...
                `}</ide-code>
              </ide-app>
              
              <i18n-translate p trim class="tx-center tx-lh-24 mb-20 mt-20">
                You can use other ideas, just import them like the following example.
              </i18n-translate>
                <ide-app title="my.idea">
                  <ide-code lang="js" numbers trim detab={14}>{`
                    //my.idea
                    use "./another.idea"
                    // ... your idea ...
                    // model Product ...
                  `}</ide-code>
                </ide-app>
            </section>
        </div>

         <div class="bg-gradient w-full border-primary">
          <section class="border-primary m-auto mw-960 px-20 py-20 pb-60">
            <h1 class="mt-40 mb-20 tx-center">
              {_('Execute')}
            </h1>
              <i18n-translate p trim class="tx-center tx-lh-24 mb-20">
                To execute an idea, you just need to run the following command.
              </i18n-translate>
                <ide-app title="my.idea">
                  <ide-code lang="js" numbers trim detab={14}>{`
                    $ npx idea -i my.idea
                  `}</ide-code>
                </ide-app>
            </section>
          <section class="bg-gradient m-auto py-40 px-20 tx-center">
          <img class="h-100" src="/idea/idea-logo.png" alt="Idea Logo" />
          <h1 class="py-20 tx-40">
            {_('It all starts with an Idea.')}
          </h1>
          <element-button 
            xl rounded 
            class="inline-block bg-t-3"
            style="margin-right:10px;" 
            href="/idea/docs/getting-started.html"
          >
            {_('Get Started')}
          </element-button>
          <element-button 
            primary xl rounded 
            class="inline-block"
            href="/idea/docs/index.html"
          >
            {_('Read the Docs')}
          </element-button>
        </section>
        </div>
      </main>
    </panel-layout>
  </body>
</html>