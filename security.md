XSS3 types

- stored Xss
- reflected xss
- dom based xss.

  def call(conn, \_opts) do
  conn

  ###### x-frame-options used to control whether a page can be placed in an IFRAME

  ###### DENY The page cannot be displayed in a frame, regardless of the site attempting to do so.

  |> put_resp_header("X-Frame-Options", "DENY")

  ###### frame-ancestors allows you to specify what parent source may embed a page. This differs from frame-src, which allows you to specify where iframes in a page may be loaded from.

  |> put_resp_header(
  "content-security-policy",
  "frame-src 'self'; frame-ancestors 'self' https://www.settld.care/;"
  )

  ##### The X-Content-Type-Options response HTTP header is a marker used by the server to indicate that the MIME types advertised in the Content-Type headers should be followed and not be changed.

  |> put_resp_header("X-CONTENT-TYPE-OPTIONS", "nosniff")

  ##### The HTTP Referrer-Policy response header controls how much referrer information (sent with the Referer header) should be included with requests to prevent potential xss , user click a link ABC on webiste XYZ , the link takes it to website MNO, the request will contain referrrer link of website XYZ

  |> put_resp_header("REFERRER-POLICY", "no-referrer")

  ###### informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS.

  put_resp_header(conn, "STRICT-TRANSPORT-SECURITY", "max-age=31536000; includeSubDomains")

  ###### cross origin isolation

  |> put_resp_header("CROSS-ORIGIN-OPENER-POLICY", "same-origin")
  |> put_resp_header("CROSS-ORIGIN-EMBEDDER-POLICY", "require-corp")
  end

## what dooes cross origin meanss

Cross-origin refers to a situation where a web page or resource interacts with resources from a different origin (domain, protocol, or port) than its own. In web development, the origin is defined by the combination of:

Scheme (Protocol): e.g., http:// or https://
Host (Domain): e.g., www.example.com
Port: e.g., 80, 443
Two URLs are considered to have the same origin only if all three components (scheme, host, and port) are identical. If any of these components differ, the resources are considered to be from different origins, leading to what's known as a cross-origin scenario.

## Why Cross-Origin Matters

Web browsers enforce the Same-Origin Policy (SOP) as a security measure to prevent malicious scripts from one origin from accessing sensitive data on another origin. This policy restricts how a document or script loaded from one origin can interact with resources from another origin.

However, there are legitimate cases where cross-origin interactions are necessary, such as when a web application needs to request resources from an API hosted on a different domain. To enable these interactions securely, web technologies like Cross-Origin Resource Sharing (CORS) and Permissions Policy are used.

### **Key Takeaways**

- **Origin** : Combination of scheme, host, and port.
- **Same-Origin Policy** : Security measure restricting interactions between different origins.
- **Cross-Origin** : Interaction between resources of different origins.
- **Permissions Policy** : Allows you to specify which origins can use certain browser features.
- **CORS** : Mechanism to control cross-origin resource sharing.

**Examples of Same Origin and Cross-Origin**

**Same Origin:**

- `https://example.com/page1` and`https://example.com/page2`
- Both have the same scheme (`https`), host (`example.com`), and default port (`443`).

**Cross-Origin:**

- **Different Schemes:**
  - `http://example.com` and`https://example.com`
- **Different Hosts:**
  - `https://example.com` and`https://api.example.com`
- **Different Ports:**
  - `https://example.com:443` and`https://example.com:8443`

---

### **Cross-Origin in Permissions Policy**

When configuring a **Permissions Policy** for your app, you might want to control which origins can access certain features. This is especially important when embedding third-party content or iframes.

**Allowing Cross-Origin Access:**

If you trust another origin and want to allow it to access certain features, you can include it in the allowlist

### **Cross-Origin Resource Sharing (CORS)**

While Permissions Policy controls the usage of certain browser features, **CORS** manages cross-origin requests for resources like APIs, fonts, or AJAX calls.

- **CORS Headers** : Servers use headers like`Access-Control-Allow-Origin` to specify which origins are allowed to access the resources.

**Example:**

Access-Control-Allow-Origin: https://example.com

# imp links

CORS: https://resourcepolicy.fyi/
https://www.youtube.com/watch?v=XLNJYhjA-0c&ab_channel=ChromeforDevelopers
https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS

# Cross-Origin Isolation, COOP, and COEP

Cross-Origin Isolation is a browser state that enables powerful web features (e.g., shared array buffers, advanced performance measurement) while preventing cross-origin information leaks.

---

## Key Concepts

### Composability of the Web
- Websites enhance capabilities by integrating resources from various origins.
- The cross-origin nature increases risks of information leakage.

### Same-Origin Policy
- Restricts interaction between resources from different origins.
- Prevents unintentional information leaks.

### Spectre Vulnerability
- CPU-level vulnerability allowing malicious websites to access memory across origins.
- Requires mitigation to enable high-precision features safely.

---

## Mitigation through Cross-Origin Isolation

To isolate origins and mitigate Spectre risks:

1. **Cross-Origin-Opener-Policy (COOP):**
   - Set to `same-origin` for the main document to isolate the browsing context group.

2. **Cross-Origin-Embedder-Policy (COEP):**
   - Set to `require-corp` to allow only explicitly shareable cross-origin resources.

3. **Cross-Origin Resource Policy (CORP)** or **Cross-Origin Resource Sharing (CORS):**
   - Cross-origin resources must explicitly allow embedding via these headers.

---

## Practical Steps to Enable Cross-Origin Isolation

1. Set **COOP** to `same-origin` for the main document.
2. Ensure embedded resources use **CORP** or **CORS** policies.
3. Serve cross-origin resources from controlled subdomains with appropriate policies.
4. Use the `cross-origin` attribute for supported resources.
5. For unsupported resources, request providers to enable **CORP** headers.

---

## Deployment Recommendations

1. Use **COEP in Report-Only Mode** initially:
   - Test configurations without affecting end users.
2. Confirm successful cross-origin isolation by checking the JavaScript flag:
   ```javascript
   self.crossOriginIsolated
