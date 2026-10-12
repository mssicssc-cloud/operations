# Create directories
New-Item -ItemType Directory -Force -Path ".github\workflows", "apps\centaur\timekeep", "apps\magnum"

# Create Centaur timekeep homepage
@'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Centaur Security - Timekeep</title>
</head>
<body>
    <h1>Centaur Security System - Timekeeping Portal</h1>
    <p>Status: Active</p>
</body>
</html>
'@ | Out-File -FilePath "apps\centaur\timekeep\index.html" -Encoding utf8

# Create Magnum homepage placeholder
@'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Magnum Security</title>
</head>
<body>
    <h1>Magnum Security Services</h1>
    <p>Status: Under Construction</p>
</body>
</html>
'@ | Out-File -FilePath "apps\magnum\index.html" -Encoding utf8

# Create CNAME for Centaur timekeep
"timekeep.centaursecurity.com.ph" | Out-File -FilePath "apps\centaur\timekeep\CNAME" -Encoding ascii

# Create README
@'
# Security Operations Monorepo

- **Centaur Security Timekeep:** `apps/centaur/timekeep/`
- **Magnum Security Site:** `apps/magnum/`
'@ | Out-File -FilePath "README.md" -Encoding utf8