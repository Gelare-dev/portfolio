<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Texpanse.aspx.vb" Inherits="Texpanse" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Texpanse - Smart Auto-Growing Textarea</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { padding: 2rem; font-family: sans-serif; background-color: #f8f9fa; }
    .texpanse-label { font-weight: 600; margin-bottom: 0.5rem; }
    .texpanse-box {
      width: 100%;
      min-height: 38px;
      resize: none;
      overflow: hidden;
      padding: 10px;
      font-size: 1rem;
      border-radius: 8px;
      border: 1px solid #ced4da;
      transition: border-color 0.3s;
    }
    .texpanse-box:focus {
      outline: none;
      border-color: #3b82f6;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1 class="mb-4 text-center">Texpanse</h1>
    <p class="text-center text-muted">A smart, auto-expanding textarea component for smooth input experiences.</p>

    <div class="mb-3">
      <label for="texpanse" class="texpanse-label">Your Message:</label>
      <textarea id="texpanse" class="texpanse-box" rows="1" placeholder="Start typing..."></textarea>
    </div>

    <p class="text-muted small">This component automatically grows as you type. Great for chat boxes, forms, notes, and more!</p>
  </div>

  <script>
    const texpanse = document.getElementById('texpanse');
    texpanse.addEventListener('input', () => {
      texpanse.style.height = 'auto';
      texpanse.style.height = texpanse.scrollHeight + 'px';
    });
  </script>
</body>
</html>
