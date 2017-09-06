2. 
--Small is beautiful
--Each program does one thing well
--Prototype as soon as possible
--Choose portability over efficiency
--Store data in flat text files
--Use software leverage
-- Use shell scripts to increase leverage and portability
--Avoid captive user interfaces
--Make every program a filter


3. 
A virtual private server is like a dedicated computer that exists only online (in a cloud-like service), or on a remote computer that can have multiple VPS's. It has its own operating system and can run programs that normally run on that operating system. Sometimes there are multiple tenants within one VPS, but they restricted from interacting, even though they are on the same physical server.
An advantage is that the user has full access to an OS, with unrestricted root permissions. That way the user can configure the VPS to meet their special needs. You can use a VPS for a mail server, e-commerce, blogging, and web hosting.
They are useful because they are cheaper than a full dedicated server, so they meet the needs of smaller organizations.


4.
Root is a special type of user that shouldn't be used because using it defeat the security model for Linux that's been in place for years. If you're logged in as root, all applications you run are running with root privileges. This means that vulnerabilites in Firefox, Flash, OpenOffice, etc., can now destroy your system, because possible viruses have access everywhere. In addition, small bugs in an application could erase some system files. In addition, you could easily accidentally format your disk -- one click and it's done. Working as an unprivileged user bars you from doing some unsafe things accidentally, and aids in the security of your system.