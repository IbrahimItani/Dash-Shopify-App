// Relative path to the current page.
var pathname = window.location.pathname;
// Segment Write Key
var writeKey = document.getElementById('writeKey').value;

// Chosen Pages to be tracked
var blogPosts = document.getElementById('blogPosts').checked;
var productPages = document.getElementById('productPages').checked;
var collectionPages = document.getElementById('collectionPages').checked;



// If we are on the home page
if (pathname === '/') {

  if (writeKey) {
    var indexScript = document.createElement('script');
    indexScript.type = 'text/javascript';
    indexScript.src = '!function(){var analytics=window.analytics=window.analytics||[];if(!analytics.initialize)if(analytics.invoked)window.console&&console.error&&console.error("Segment snippet included twice.");else{analytics.invoked=!0;analytics.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","group","track","ready","alias","page","once","off","on"];analytics.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);e.unshift(t);analytics.push(e);return analytics}};for(var t=0;t<analytics.methods.length;t++){var e=analytics.methods[t];analytics[e]=analytics.factory(e)}analytics.load=function(t){var e=document.createElement("script");e.type="text/javascript";e.async=!0;e.src=("https:"===document.location.protocol?"https://":"http://")+"cdn.segment.com/analytics.js/v1/"+t+"/analytics.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(e,n)};analytics.SNIPPET_VERSION="3.0.1";

  window.analytics.load(writeKey);

  // identify the customer if they have an account
  {% if customer.id %}
  window.analytics.identify("{{customer.id}}", {
    name: "{{ customer.name }}",
    firstName: "{{ customer.first_name }}",
    lastName: "{{ customer.last_name }}",
    email: "{{ customer.email }}",
    phone: "{{ customer.default_address.phone }}",
    address: {  // uses the default address
      street: "{{ customer.default_address.street }}",
      city: "{{ customer.default_address.city }}",
      state: "{{ customer.default_address.province }}",
      stateCode: "{{ billing_address.province_code }}",
      postalCode: "{{ customer.default_address.zip }}",
      country: "{{ customer.default_address.country }}",
      countryCode: "{{ customer.default_address.country_code }}"
    },
    totalSpent: "{{ customer.total_spent }}",
    allOrdersCount: "{{ customer.orders_count }}",
    allOrderIds: [{% for order in customer.orders %}"{{ order.id }}",{% endfor %}],
    tags: [{% for tag in customer.tags %} "{{ tag }}", {% endfor %}]
  });
  {% endif %}
  window.analytics.page();
  }}();';
  document.getElementsByTagName('head')[0].appendChild(indexScript);

  }

  /* do something */

}

// If we are on a product page
if (pathname.indexOf('/products/') !== -1) {

    /* do something */

}
