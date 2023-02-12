FROM wiremock/wiremock:2.35.0-alpine
COPY mappings /home/wiremock/mappings
EXPOSE 8080
CMD ["java", "-cp", "/var/wiremock/lib/*:/var/wiremock/extensions/*", "com.github.tomakehurst.wiremock.standalone.WireMockServerRunner"]