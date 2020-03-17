FROM bytemark/webdav:latest

RUN echo 'BrowserMatch "^Microsoft-WebDAV-MiniRedir" redirect-carefully' >> conf/conf-available/dav.conf