plugins {
    id 'java'
    id 'org.springframework.boot' version '3.2.6'
    id 'io.spring.dependency-management' version '1.1.5'
}

group = 'com.ohgiraffers'
version = '0.0.1-SNAPSHOT'

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(17)
    }
}

repositories {
    mavenCentral()
}

dependencies {
    implementation 'org.springframework.boot:spring-boot-starter-hateoas'
    implementation 'org.springframework.boot:spring-boot-starter-validation'
    implementation 'org.springframework.boot:spring-boot-starter-web'
    developmentOnly 'org.springframework.boot:spring-boot-devtools'
    testImplementation 'org.springframework.boot:spring-boot-starter-test'
    testRuntimeOnly 'org.junit.platform:junit-platform-launcher'
    // https://mvnrepository.com/artifact/org.springdoc/springdoc-openapi-starter-webmvc-ui
    implementation 'org.springdoc:springdoc-openapi-starter-webmvc-ui:2.2.0'

}

tasks.named('test') {
    useJUnitPlatform()
}